unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCButton, GR32_Image, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Menus, ExtDlgs, Buttons, StdCtrls, GR32, GR32_Text_LCL_Win, ShellApi;

type

  { TForm1 }

  TForm1 = class(TForm)
    BCButton1: TBCButton;
    BCButton2: TBCButton;
    BCButton3: TBCButton;
    BCButton4: TBCButton;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    Img_1: TImage32;
    ImgView32_1: TImgView32;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDropFiles(Sender: TObject; const FileNames: array of String);
    procedure Image1Click(Sender: TObject);
    procedure ImgView32_1DblClick(Sender: TObject);
    procedure ImgView32_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure Img_1DblClick(Sender: TObject);
    procedure Img_1PaintStage(Sender: TObject; Buffer: TBitmap32;
      StageNum: Cardinal);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    tab: array[1..8] of record
                          img: TImage32;
                          FileName: string;
                        end;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.frm}

{ TForm1 }

procedure TForm1.Image1Click(Sender: TObject);
begin
  if not OpenPictureDialog1.Execute then exit;
  if FileExists(OpenPictureDialog1.FileName) then begin
    TImage(Sender).Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Tab[TImage(Sender).Tag].FileName:= OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.ImgView32_1DblClick(Sender: TObject);
begin
  if not OpenPictureDialog1.Execute then exit;
  if FileExists(OpenPictureDialog1.FileName) then begin
    TImgView32(Sender).Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
    lblFileEdit.Caption:= OpenPictureDialog1.FileName;
  end;
end;

procedure TForm1.ImgView32_1PaintStage(Sender: TObject; Buffer: TBitmap32; StageNum: Cardinal);
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

  with ImgView32_1.PaintStages[0]^ do
  begin
    if Stage = PST_CLEAR_BACKGND then Stage := PST_CUSTOM;
  end;
end;

procedure TForm1.FormDropFiles(Sender: TObject; const FileNames: array of String);
begin
  ShowMessage(Sender.ClassName);
  tab[1].img.Bitmap.LoadFromFile(FileNames[0]);
end;

procedure TForm1.Img_1DblClick(Sender: TObject);
begin
  if not OpenPictureDialog1.Execute then exit;
  if FileExists(OpenPictureDialog1.FileName) then TImage32(Sender).Bitmap.LoadFromFile(OpenPictureDialog1.FileName);
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

end.

