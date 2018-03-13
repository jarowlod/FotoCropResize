unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LR_Class, LR_Desgn, BCPanel, BCButton,
  GR32_Image, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus, ExtDlgs,
  Buttons, StdCtrls, ComCtrls, GR32, GR32_Text_LCL_Win,
  ShellApi, GR32_Layers, GR32_Blend, IniFiles, GR32_Resamplers;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnDrukuj: TBCButton;
    btnWytnij: TBCButton;
    btnDodajDoSzablonu: TBCButton;
    btnWczytajFoto: TBCButton;
    btnZapiszJako: TBCButton;
    btnZapiszDoOTIS: TBCButton;
    btnZaznacz: TBCButton;
    btnEdycjaSzablonu: TBCButton;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    edIDO: TEdit;
    frDesigner1: TfrDesigner;
    frReport1: TfrReport;
    Img_1: TImage32;
    ImgView: TImgView32;
    Img_2: TImage32;
    Img_3: TImage32;
    Img_4: TImage32;
    Img_5: TImage32;
    Img_6: TImage32;
    Img_7: TImage32;
    Img_8: TImage32;
    lblFileEdit: TLabel;
    miClear: TMenuItem;
    miLoadSzablon: TMenuItem;
    miClearAll: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel_8: TPanel;
    Panel_1: TPanel;
    Panel_2: TPanel;
    Panel_3: TPanel;
    Panel_4: TPanel;
    Panel_5: TPanel;
    Panel_6: TPanel;
    Panel_7: TPanel;
    PopupMenu1: TPopupMenu;
    SaveDialog1: TSaveDialog;
    procedure btnDodajDoSzablonuClick(Sender: TObject);
    procedure btnDrukujClick(Sender: TObject);
    procedure btnWytnijClick(Sender: TObject);
    procedure btnZapiszJakoClick(Sender: TObject);
    procedure btnZapiszDoOTISClick(Sender: TObject);
    procedure btnZaznaczClick(Sender: TObject);
    procedure btnEdycjaSzablonuClick(Sender: TObject);
    procedure edIDOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure ImgViewDblClick(Sender: TObject);
    procedure ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure Img_1DblClick(Sender: TObject);
    procedure Img_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure miClearAllClick(Sender: TObject);
    procedure miClearClick(Sender: TObject);
    procedure miLoadSzablonClick(Sender: TObject);
  private
    CropLayer: TRubberbandLayer;
    PathEditFileName: string;
    PathFotoOTIS    : string;
    tab: array[1..8] of record
                          img: TImage32;
                          FileName: string;
                        end;
    procedure ResizeFoto(InputPicture: TBitmap32; OutputImage: TBitmap; const DstWidth, DstHeigth: Integer);
    procedure SetHighQualityStretchFilter(B: TBitmap32);
    procedure TabDodaj(vIndex: integer; vFile: string);
    procedure HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
    procedure LayerResizing(Sender: TObject; const OldLocation: TFloatRect;
      var NewLocation: TFloatRect; DragState: TRBDragState; Shift: TShiftState);
    procedure PaintCropHandler(Sender: TObject; Buffer: TBitmap32);
    procedure ZaznaczCrop;
    procedure Wytnij;
    procedure Drukuj;
    procedure WczytajZdjecie(FileName: string);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
    ini: TIniFile;
begin
  DragAcceptFiles(Handle, False);

  tab[1].img:= Img_1;
  tab[2].img:= Img_2;
  tab[3].img:= Img_3;
  tab[4].img:= Img_4;
  tab[5].img:= Img_5;
  tab[6].img:= Img_6;
  tab[7].img:= Img_7;
  tab[8].img:= Img_8;
  for i:=1 to 8 do
  begin
    tab[i].img.PaintStages[0]^.Stage:= PST_CUSTOM;
    tab[i].FileName:= '';
    tab[i].img.Hint:= 'Brak';
    //DragAcceptFiles(tab[i].img.Handle, True);
  end;
  DragAcceptFiles(ImgView.Handle, True);

  with ImgView.PaintStages[0]^ do
  begin
    if Stage = PST_CLEAR_BACKGND then Stage := PST_CUSTOM;
  end;

  // wczytujemy ustawienia zapisanej sesji
  ini:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    for i:=1 to 8 do
    begin
      TabDodaj(i, ini.ReadString('Szablon', 'img'+IntToStr(i),'') );
    end;
    Left  := ini.ReadInteger('Form', 'Left'  , Left);
    Top   := ini.ReadInteger('Form', 'Top'   , Top);
    Width := ini.ReadInteger('Form', 'Width' , Width);
    Height:= ini.ReadInteger('Form', 'Height', Height);

    PathFotoOTIS:= ini.ReadString('Config','PathFotoOTIS', 'W:\Paczkownia\ZK Foto');
  finally
    FreeAndNil(ini);
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
var ini: TIniFile;
    i: integer;
begin
  CropLayer:= nil;

  // zapisujemy ustawienia zapisanej sesji
  ini:= TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    for i:=1 to 8 do
    begin
      ini.WriteString('Szablon', 'img'+IntToStr(i), tab[i].FileName);
    end;
    ini.WriteInteger('Form', 'Left'  , Left);
    ini.WriteInteger('Form', 'Top'   , Top);
    ini.WriteInteger('Form', 'Width' , Width);
    ini.WriteInteger('Form', 'Height', Height);

    ini.WriteString('Config','PathFOTOOTIS', PathFotoOTIS);
  finally
    FreeAndNil(ini);
  end;
end;

procedure TForm1.WczytajZdjecie(FileName: string);
begin
  ImgView.Bitmap.LoadFromFile(FileName);
  lblFileEdit.Caption      := FileName;
  PathEditFileName         := FileName;

  btnDodajDoSzablonu.Enabled:= false;
  btnZapiszJako.Enabled     := true;
  btnZaznacz.Enabled        := true;
  btnWytnij.Enabled         := true;
end;

procedure TForm1.ImgViewDblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    WczytajZdjecie(OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32; StageNum: Cardinal);
const            //0..1
  Colors: array [Boolean] of TColor32 = ($FFFFFFFF,$FFDFDFDF);// $FFB0B0B0);
var
  R: TRect;
  I, J: Integer;
  OddY: Integer;
  TilesHorz, TilesVert: Integer;
  TileX, TileY: Integer;
  TileHeight, TileWidth: Integer;
begin
  TileHeight := 15;
  TileWidth := 15;

  TilesHorz := Buffer.Width div TileWidth;
  TilesVert := Buffer.Height div TileHeight;
  TileY := 0;

  for J := 0 to TilesVert do
  begin
    TileX := 0;
    OddY := J and $1;
    for I := 0 to TilesHorz do
    begin
      R.Left := TileX;
      R.Top := TileY;
      R.Right := TileX + TileWidth;
      R.Bottom := TileY + TileHeight;
      Buffer.FillRectS(R, Colors[I and $1 = OddY]);
      Inc(TileX, TileWidth);
    end;
    Inc(TileY, TileHeight);
  end;

  if TImgView32(Sender).Bitmap.Empty then
  with Buffer do
  begin
    Font.Size:= 168;
    Font.Color:= clGray;
    R:= ClipRect;
    R.Top:= (R.Height div 2) - (TextHeight('+') div 2) - 25;
    Buffer.Textout(R, DT_CENTER, '+');
  end;
end;

procedure TForm1.btnWytnijClick(Sender: TObject);
begin
  Wytnij;
end;

procedure TForm1.btnDrukujClick(Sender: TObject);
begin
  Drukuj;
end;

procedure TForm1.btnDodajDoSzablonuClick(Sender: TObject);
var i: integer;
begin
  for i:=1 to 8 do
  begin
    if tab[i].FileName='' then
    begin
      TabDodaj(i, PathEditFileName);
      Break;
    end;
  end;
end;

procedure TForm1.btnZapiszJakoClick(Sender: TObject);
var jpg: TJPEGImage;
begin
  SaveDialog1.InitialDir:= ExtractFilePath(PathEditFileName);
  SaveDialog1.FileName  := ExtractFileName(PathEditFileName);
  if SaveDialog1.Execute then
  begin
    //ImgView.Bitmap.SaveToFile(SaveDialog1.FileName);
    jpg:= TJPEGImage.Create;
    jpg.SetSize(ImgView.Bitmap.Width, ImgView.Bitmap.Height);
    jpg.Canvas.CopyRect(Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height), ImgView.Bitmap.Canvas, Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height));
    jpg.CompressionQuality := 96;
    jpg.SaveToFile(SaveDialog1.FileName);
    FreeAndNil(jpg);

    PathEditFileName:= SaveDialog1.FileName;
    lblFileEdit.Caption:= PathEditFileName;
    btnDodajDoSzablonu.Enabled:= true;
  end;
end;

procedure TForm1.btnZapiszDoOTISClick(Sender: TObject);
var jpg: TJPEGImage;
    tmp: TBitmap;
    W,H: integer;
    scale: single;
begin
  if edIDO.Text='' then exit;
  SaveDialog1.InitialDir:= PathFotoOTIS;
  SaveDialog1.FileName:= edIDO.Text+'.jpg';
  if SaveDialog1.Execute then
  begin
    tmp:= TBitmap.Create;
    if ImgView.Bitmap.Height> 800 then
    begin
      scale:= 800 / ImgView.Bitmap.Height;
      H:= 800;
      W:= Round( ImgView.Bitmap.Width * scale );
      ResizeFoto(ImgView.Bitmap, tmp, W, H);
    end else
    begin
      tmp.Assign(ImgView.Bitmap);
    end;

    jpg:= TJPEGImage.Create;
    jpg.SetSize(tmp.Width, tmp.Height); //jpg.SetSize(ImgView.Bitmap.Width, ImgView.Bitmap.Height);
    jpg.Canvas.CopyRect(tmp.Canvas.ClipRect, tmp.Canvas, tmp.Canvas.ClipRect);  //jpg.Canvas.CopyRect(Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height), ImgView.Bitmap.Canvas, Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height));
    jpg.CompressionQuality := 96;
    jpg.SaveToFile(SaveDialog1.FileName);

    FreeAndNil(jpg);
    FreeAndNil(tmp);
  end;
end;

procedure TForm1.btnZaznaczClick(Sender: TObject);
begin
  ZaznaczCrop;
end;

procedure TForm1.btnEdycjaSzablonuClick(Sender: TObject);
var i: integer;
begin
  frReport1.LoadFromFile('szablon.lrf');
  for i:= 1 to 8 do
  begin
    if tab[i].FileName<>'' then
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.LoadFromFile(tab[i].FileName)
    else
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.Clear;
  end;
  frReport1.DesignReport;
end;

procedure TForm1.edIDOChange(Sender: TObject);
begin
  btnZapiszDoOTIS.Enabled:= (edIDO.Text<>'')and(PathEditFileName<>'');
end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String);
begin
  WczytajZdjecie(FileNames[0]);
end;

procedure TForm1.Img_1DblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    TabDodaj(TImage32(Sender).Tag, OpenPictureDialog1.FileName);
  end;
end;

procedure TForm1.Img_1PaintStage(Sender: TObject; Buffer: TBitmap32; StageNum: Cardinal);
const            //0..1
  Colors: array [Boolean] of TColor32 = ($FFFFFFFF, $FFDFDFDF);
var
  R: TRect;
  I, J: Integer;
  OddY: Integer;
  TilesHorz, TilesVert: Integer;
  TileX, TileY: Integer;
  TileHeight, TileWidth: Integer;
begin
  TileHeight := 2;
  TileWidth := 2;

  TilesHorz := Buffer.Width div TileWidth;
  TilesVert := Buffer.Height div TileHeight;
  TileY := 0;

  for J := 0 to TilesVert do
  begin
    TileX := 0;
    OddY := J and $1;
    for I := 0 to TilesHorz do
    begin
      R.Left := TileX;
      R.Top := TileY;
      R.Right := TileX + TileWidth;
      R.Bottom := TileY + TileHeight;
      Buffer.FillRectS(R, Colors[I and $1 = OddY]);
      Inc(TileX, TileWidth);
    end;
    Inc(TileY, TileHeight);
  end;


  if TImage32(Sender).Bitmap.Empty then
  with Buffer do
  begin
    R:= ClipRect;
    R.Top:= R.Top-18;
    Font.Size:= 62;
    Font.Color:= clGray;
    Buffer.Textout(R, DT_CENTER, '+');
  end;
end;

procedure TForm1.miClearAllClick(Sender: TObject);
var i: integer;
begin
  for i:=1 to 8 do
  begin
    TabDodaj(i, '');
  end;
end;

procedure TForm1.miClearClick(Sender: TObject);
var img: TImage32;
begin
  img:= TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent);
  TabDodaj(img.Tag, '');
end;

procedure TForm1.miLoadSzablonClick(Sender: TObject);
begin
  Img_1DblClick(TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent));
end;

procedure TForm1.TabDodaj(vIndex: integer; vFile: string);
begin
  if vFile<>'' then
    begin
      tab[vIndex].img.Bitmap.LoadFromFile(vFile);
      tab[vIndex].FileName:= vFile;
      tab[vIndex].img.Hint:= vFile;
    end
  else
    if tab[vIndex].FileName<>'' then
    begin
      tab[vIndex].img.Bitmap.SetSize(0,0);
      tab[vIndex].img.Bitmap.Clear;
      tab[vIndex].FileName:= '';
      tab[vIndex].img.Hint:= 'Brak';
    end;
end;

procedure TForm1.ZaznaczCrop;
var
  L: TRubberbandLayer;// PositionedLayer;
  P: TPoint;
  W,H: Single;
begin
  if CropLayer<>nil then
  begin
    FreeAndNil(CropLayer);
    ImgView.Layers.Clear;
    exit;
  end;
  // get coordinates of the center of viewport
  with ImgView.GetViewportRect do
    P := ImgView.ControlToBitmap(GR32.Point((Right + Left) div 2, (Top + Bottom) div 2));

  H:= ImgView.Bitmap.Height / 4;
  W:= H * 35/45;

  L:= TRubberbandLayer.Create(ImgView.Layers);
  L.ChildLayer  := nil;
  L.LayerOptions:= LOB_VISIBLE or LOB_MOUSE_EVENTS or LOB_NO_UPDATE;
  L.MinHeight   := 45;
  L.MinWidth    := 35;
  L.MaxHeight   := ImgView.Bitmap.Height;
  L.MaxWidth    := ImgView.Bitmap.Width;
  L.Options     := [roProportional];
  L.Location    := FloatRect(P.X - W, P.Y - H, P.X + W, P.Y + H);
  L.Scaled      := true;
  L.MouseEvents := true;
  //L.OnMouseDown := @LayerMouseDown;
  L.OnResizing  := @LayerResizing;
  L.OnPaint     := @PaintCropHandler;
  CropLayer     := L;
end;

procedure TForm1.Wytnij;
var cropRect: TRect;
    img: TBitmap32;
begin
  if CropLayer=nil then exit;
  cropRect:= MakeRect(CropLayer.Location);
  img:= TBitmap32.Create;
  img.SetSize(cropRect.Right - cropRect.Left, cropRect.Bottom - cropRect.Top);

  ImgView.Bitmap.DrawTo(img, 0,0, cropRect);

  with ImgView do
  begin
    CropLayer := nil;
    Layers.Clear;
    Scale := 1;
    Bitmap.SetSize(img.Width, img.Height);
    Bitmap.Clear;
  end;

  img.DrawTo(ImgView.Bitmap);
end;

procedure TForm1.Drukuj;
var i: integer;
begin
  frReport1.LoadFromFile('szablon.lrf');
  for i:= 1 to 8 do
  begin
    if tab[i].FileName<>'' then
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.LoadFromFile(tab[i].FileName)
    else
      (frReport1.FindObject('Picture'+IntToStr(i)) as TfrPictureView).Picture.Clear;
  end;
  frReport1.ShowReport;
end;

procedure TForm1.HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
var
  Ptr: PColor32;
  LastPtr: PColor32;
  X,Y: Integer;
begin
  // Get pointers of first and last pixel
  Ptr := Bmp32.PixelPtr[0,0];
  LastPtr := Bmp32.PixelPtr[Bmp32.Width-1, Bmp32.Height-1];
  // Init Pixel coordinates
  X := 0;
  Y := 0;

  // Iterate over all pixels
  // (We need to do a typecast here because we can't compare pointers in Delphi)
  while Ptr < LastPtr do
  begin
    // Check if pixel is outside of crop rect
    if (X < CropRect.Left) or (X > CropRect.Right) or
       (Y < CropRect.Top) or (Y > CropRect.Bottom) then
    begin
      // Darken pixel by 50%
      Ptr^ := Lighten(Ptr^, -50);
    end;

    // Move to next pixel
    inc(Ptr);
    inc(X);
    // Reached end of scanline?
    if X >= Bmp32.Width then
    begin
      X := 0;
      inc(Y);
    end;
  end;
end;

procedure TForm1.LayerResizing(Sender: TObject;
  const OldLocation: TFloatRect; var NewLocation: TFloatRect;
  DragState: TRBDragState; Shift: TShiftState);
begin
  with NewLocation do
  begin
    if (Left < 0) then begin
      Right:= Right-Left;
      Left:= 0;
    end;
    if (Right > ImgView.Bitmap.Width) then begin
      Left := ImgView.Bitmap.Width - (Right-Left);
      Right:= ImgView.Bitmap.Width;
    end;

    if (Top < 0) then begin
      Bottom:= Bottom-Top;
      Top:= 0;
    end;
    if (Bottom > ImgView.Bitmap.Height) then begin
      Top:= ImgView.Bitmap.Height - (Bottom-Top);
      Bottom:= ImgView.Bitmap.Height;
    end;
  end;
end;

procedure TForm1.PaintCropHandler(Sender: TObject; Buffer: TBitmap32);
var
  DstRect: TFloatRect;
  R: TRect;
begin
  if Sender is TPositionedLayer then
    with TPositionedLayer(Sender) do
    begin
      DstRect := GetAdjustedLocation;
      R := MakeRect(DstRect);
      HighlightCropRect(Buffer, R);
      Buffer.Changed;
    end;
end;

procedure TForm1.SetHighQualityStretchFilter(B: TBitmap32);
var
  KR: TKernelResampler;
begin
  if not (B.Resampler is TKernelResampler) then
  begin
    KR := TKernelResampler.Create(B);
    KR.Kernel := TLanczosKernel.Create;
  end
  else
  begin
    KR := B.Resampler as TKernelResampler;
    if not (KR.Kernel is TLanczosKernel) then
    begin
      KR.Kernel.Free;
      KR.Kernel := TLanczosKernel.Create;
    end;
  end;
end;

procedure TForm1.ResizeFoto(InputPicture: TBitmap32; OutputImage: TBitmap;
  const DstWidth, DstHeigth: Integer);
var
  Src, Dst: TBitmap32;
begin
  Dst := nil;
  try
    Src := TBitmap32.Create;
    try
      Src.Assign(InputPicture);
      SetHighQualityStretchFilter(Src);
      Dst := TBitmap32.Create;
      Dst.SetSize(DstWidth, DstHeigth);
      Src.DrawTo(Dst, Rect(0, 0, DstWidth, DstHeigth), Rect(0, 0, Src.Width, Src.Height));
    finally
      FreeAndNil(Src);
    end;
    OutputImage.Assign(Dst);
  finally
    FreeAndNil(Dst);
  end;
end;

end.

