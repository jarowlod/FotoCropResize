unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, BCPanel, BCButton, BCLabel, Forms, Controls,
  Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    BCLabel1: TBCLabel;
    BCLabel2: TBCLabel;
    BCPanel1: TBCPanel;
    BCPanel2: TBCPanel;
    BCPanel3: TBCPanel;
    btnZapiszDoOTIS2: TBCButton;
    btnZapiszDoOTIS3: TBCButton;
    imgSrc: TImage;
    imgDes: TImage;
    Label1: TLabel;
    procedure btnZapiszDoOTIS2Click(Sender: TObject);
    procedure btnZapiszDoOTIS3Click(Sender: TObject);
  private

  public
    procedure ShowFoto(src: TBitmap; desPath: string);
  end;

var
  Form2: TForm2;

implementation

{$R *.frm}

{ TForm2 }

procedure TForm2.btnZapiszDoOTIS3Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TForm2.btnZapiszDoOTIS2Click(Sender: TObject);
begin
  ModalResult:= mrOK;
end;

procedure TForm2.ShowFoto(src: TBitmap; desPath: string);
begin
  imgSrc.Picture.Bitmap.Assign(src);
  if FileExists(desPath) then imgDes.Picture.LoadFromFile(desPath);
end;

end.

