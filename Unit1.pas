unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LR_Class, LR_Desgn, BCPanel, BCButton,
  GR32_Image, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus, ExtDlgs,
  Buttons, StdCtrls, GR32, GR32_Text_LCL_Win, ShellApi, GR32_Layers, GR32_Blend, JPEGLib;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCButton1: TBCButton;
    BCButton2: TBCButton;
    BCButton3: TBCButton;
    BCButton4: TBCButton;
    BCButton5: TBCButton;
    BCButton6: TBCButton;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
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
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
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
    procedure BCButton1Click(Sender: TObject);
    procedure BCButton2Click(Sender: TObject);
    procedure BCButton3Click(Sender: TObject);
    procedure BCButton5Click(Sender: TObject);
    procedure BCButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure ImgViewDblClick(Sender: TObject);
    procedure ImgViewPaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure Img_1DblClick(Sender: TObject);
    procedure Img_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    CropLayer: TRubberbandLayer;
    EditFileName: string;
    tab: array[1..8] of record
                          img: TImage32;
                          FileName: string;
                        end;
    procedure HighlightCropRect(Bmp32: TBitmap32; CropRect: TRect);
    procedure LayerResizing(Sender: TObject; const OldLocation: TFloatRect;
      var NewLocation: TFloatRect; DragState: TRBDragState; Shift: TShiftState);
    procedure PaintCropHandler(Sender: TObject; Buffer: TBitmap32);
    procedure ZaznaczCrop;
    procedure Wytnij;
    procedure ZapiszJako;
    procedure Drukuj;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var i: integer;
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
    DragAcceptFiles(tab[i].img.Handle, True);
  end;

  with ImgView.PaintStages[0]^ do
  begin
    if Stage = PST_CLEAR_BACKGND then Stage := PST_CUSTOM;
  end;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  CropLayer:= nil;
end;

procedure TForm1.ImgViewDblClick(Sender: TObject);
begin
  if not OpenPictureDialog1.Execute then exit;
  if FileExists(OpenPictureDialog1.FileName) then begin
    TImgView32(Sender).Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
    lblFileEdit.Caption:= OpenPictureDialog1.FileName;
    EditFileName:= OpenPictureDialog1.FileName;
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

procedure TForm1.BCButton2Click(Sender: TObject);
begin
  Wytnij;
end;

procedure TForm1.BCButton1Click(Sender: TObject);
begin
  Drukuj;
end;

procedure TForm1.BCButton3Click(Sender: TObject);
begin
  ZapiszJako;
end;

procedure TForm1.BCButton5Click(Sender: TObject);
begin
  ZaznaczCrop;
end;

procedure TForm1.BCButton6Click(Sender: TObject);
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

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String);
begin
  ShowMessage(Sender.ClassName);
  tab[1].img.Bitmap.LoadFromFile(FileNames[0]); // TODO: do jakiego komponentu ma wczytać zdjęcie
end;

procedure TForm1.Img_1DblClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    TImage32(Sender).Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
    tab[TImage32(Sender).Tag].FileName:= OpenPictureDialog1.FileName;
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

  with Buffer do
  begin
    R:= ClipRect;
    R.Top:= R.Top-18;
    Font.Size:= 62;
    Font.Color:= clGray;
    Buffer.Textout(R, DT_CENTER, '+');
  end;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
var img: TImage32;
begin
  img:= TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent);
  img.Bitmap.SetSize(0,0);
  img.Bitmap.Clear;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Img_1DblClick(TImage32(((Sender as TMenuItem).GetParentMenu as TPopupMenu).PopupComponent));
end;

procedure TForm1.ZaznaczCrop;
var
  L: TRubberbandLayer;// PositionedLayer;
  P: TPoint;
begin
  if CropLayer<>nil then FreeAndNil(CropLayer);
  // get coordinates of the center of viewport
  with ImgView.GetViewportRect do
    P := ImgView.ControlToBitmap(GR32.Point((Right + Left) div 2, (Top + Bottom) div 2));

  L:= TRubberbandLayer.Create(ImgView.Layers);
  L.ChildLayer  := nil;
  L.LayerOptions:= LOB_VISIBLE or LOB_MOUSE_EVENTS or LOB_NO_UPDATE;
  L.MinHeight   := 45;
  L.MinWidth    := 35;
  L.MaxHeight   := ImgView.Bitmap.Height;
  L.MaxWidth    := ImgView.Bitmap.Width;
  L.Options     := [roProportional];
  L.Location    := FloatRect(P.X - 35, P.Y - 45, P.X + 35, P.Y + 45);
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

procedure TForm1.ZapiszJako;
var jpg: TJPEGImage;
begin
  SaveDialog1.FileName:= EditFileName;
  if SaveDialog1.Execute then
  begin
    //ImgView.Bitmap.SaveToFile(SaveDialog1.FileName);
    jpg:= TJPEGImage.Create;
    jpg.SetSize(ImgView.Bitmap.Width, ImgView.Bitmap.Height);
    jpg.Canvas.CopyRect(Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height), ImgView.Bitmap.Canvas, Rect(0,0,ImgView.Bitmap.Width,ImgView.Bitmap.Height));
    jpg.CompressionQuality := 96;
    jpg.SaveToFile(SaveDialog1.FileName);
    FreeAndNil(jpg);
  end;
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
  while Integer(Ptr) < Integer(LastPtr) do
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

end.

