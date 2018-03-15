unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls,  Math, ExtDlgs, Jpeg;

type
  PRGB24 = ^TRGB24;
  TRGB24 = record B, G, R: Byte; end;
  PRGBArray = ^TRGBArray;
  TRGBArray = array[0..0] of TRGB24;
  THistogram = array[0..255] of Byte;

  TfrmMain = class(TForm)
    imgDest: TImage;
    imgSrc: TImage;
    pnlControl: TPanel;
    tbBright: TTrackBar;
    btnOpen: TButton;
    dlgOpen: TOpenPictureDialog;
    radAuto: TRadioButton;
    radManuell: TRadioButton;
    dlgSave: TSavePictureDialog;
    btnSave: TButton;
    tbContrast: TTrackBar;
    tbSaturation: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    radExp: TRadioButton;
    tbExposure: TTrackBar;
    Label4: TLabel;
    procedure btnOpenClick(Sender: TObject);
    procedure tbBrightChange(Sender: TObject);
    procedure MakePreviewImage;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    procedure DoBCS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  mx,my: array[Word]of Integer;
  img: TBitmap;
  imgLoaded: Boolean;

implementation

{$R *.dfm}

// This is the routine for brightness, contrast and saturation adjustment...
procedure fxBCS(dest: TBitmap; b, c, s: integer);
var
  x, y, i, k, v, pv: Integer;
  ci1, ci2, ci3: integer;
  alpha: integer;
  a: double;
  BrightnesLut: array[0..255] of byte;
  ContrastLut: array[0..255] of byte;
  BCLut: array[0..255] of byte;
  SaturationLut: record
    Grays: array[0..767] of Integer;
    Alpha: array[Byte] of Word;
  end;
  SLDest, DestOff: integer;
  p: pRGB24;
  s1, s2: integer;
  bool: boolean;
  color: tRGB24;
begin
  if c = 100 then c := 99;
  for i := 0 to 255 do begin
    if c > 0 then
      a := 1 / cos(c * (PI / 200))
    else
      a := 1 * cos(c * (3.1416 / 200));
    v := Round(a * (i - 170) + 170);
    if v > 255 then v := 255 else if v < 0 then v := 0;
    ContrastLut[i] := v;
  end;
  for i := 0 to 255 do begin
    alpha := b;
    k := 256 - alpha;
    v := (k + alpha * i) div 256;
    if v < 0 then v := 0 else if v > 255 then  v := 255;
    BCLut[i] := ContrastLut[v];
  end;
  x := 0;
  for i := 1 to 256 do SaturationLut.Alpha[i - 1] := (i * s) shr 8;
  for i := 0 to 255 do begin
    y := i - SaturationLut.Alpha[i];
    SaturationLut.Grays[x] := y;
    Inc(x);
    SaturationLut.Grays[x] := y;
    Inc(x);
    SaturationLut.Grays[x] := y;
    Inc(x);
  end;
  SLDest := Integer(dest.ScanLine[0]);
  DestOff := Integer(dest.ScanLine[1]) - SLDest;
  for y := 0 to Dest.Height - 1 do begin
    for x := 0 to Dest.Width - 1 do begin
      color := pRGBArray(SLDest)[x];
      v := color.R + color.G + color.B;
      ci1 := SaturationLut.Grays[v] + SaturationLut.Alpha[color.B];
      ci2 := SaturationLut.Grays[v] + SaturationLut.Alpha[color.G];
      ci3 := SaturationLut.Grays[v] + SaturationLut.Alpha[color.R];
       if ci1 < 0 then ci1 := 0 else if ci1 > 255 then ci1 := 255;
      if ci2 < 0 then ci2 := 0 else if ci2 > 255 then ci2 := 255;
      if ci3 < 0 then ci3 := 0 else if ci3 > 255 then ci3 := 255;
       PRGBArray(SLDest)[x].B := BCLut[ci1];
      PRGBArray(SLDest)[x].G := BCLut[ci2];
      PRGBArray(SLDest)[x].R := BCLut[ci3];
    end;
    inc(SLDest, DestOff);
  end;
end;

procedure fxHistCalc(src: tBitmap; var histR, HistG, HistB: THistogram);
var
  RGB: PRGBArray;
  x, y: Integer;
begin
  for x := 0 to 255 do begin
    histR[x] := 0;
    histG[x] := 0;
    histB[x] := 0;
  end;
  for y := 0 to src.Height - 1 do begin
    RGB := src.ScanLine[y];
    for x := 0 to src.Width - 1 do begin
      inc(histR[RGB[x].R]);
      inc(histG[RGB[x].G]);
      inc(histB[RGB[x].B]);
    end;
  end;
end;

procedure fxHistEqu(src: tBitmap; z: single);
type
  THistSingle = array[0..255] of Single;
var
  RGB: PRGBArray;
  x, y, pv: integer;
  q1, q2, q3: Single;
  histR, HistG, HistB: Thistogram;
  Hist, VCumSumR, VCumSumG, VCumSumB: THistSingle;
  r, g, b, cy, ccr, ccb: byte;

  function CumSum(hist: THistSingle): THistSingle;
  var
    x: Byte;
    Temp: THistsingle;
  begin
    Temp[0] := Hist[0];
    for x := 1 to 255 do Temp[x] := Temp[x - 1] + Hist[x];
    CumSum := Temp;
  end;

begin
  fxHistCalc(src, histR, histG, histB);
  q1 := 0;   // RED Channel
  for x := 0 to 255 do begin
    Hist[x] := power(HistR[x], z);
    q1 := q1 + Hist[x];
  end;
  vcumsumR := cumsum(Hist);
  q2 := 0;   // GREEN Channel
  for x := 0 to 255 do begin
    Hist[x] := power(HistG[x], z);
    q2 := q2 + Hist[x];
  end;
  vcumsumG := cumsum(Hist);
  q3 := 0;   // BLUE Channel
  for x := 0 to 255 do begin
    Hist[x] := power(HistB[x], z);
    q3 := q3 + Hist[x];
  end;
  vcumsumB := cumsum(Hist);
  for y := 0 to src.height - 1 do
  begin
    RGB := src.scanline[y];
    for x := 0 to src.width - 1 do begin
      RGB[x].R := Trunc((255 / q1) * vcumsumR[RGB[x].R]);
      RGB[x].G := Trunc((255 / q2) * vcumsumG[RGB[x].G]);
      RGB[x].B := Trunc((255 / q3) * vcumsumB[RGB[x].B]);
    end;
  end;
end;

procedure fxExposure(src: TBitmap; k: Single);
var
  RGB: PRGBArray;
  i, x, y, RGBOffset: Integer;
  lut: array[0..255] of integer;
begin
  for i := 0 to 255 do begin
    if k < 0 then
      lut[i]:= i - ((-Round((1 - Exp((i / -128)*(k / 128)))*256)*(i xor 255)) shr 8)
    else
      lut[i]:= i + ((Round((1 - Exp((i / -128)*(k / 128)))*256)*(i xor  255)) shr 8);
    if lut[i] < 0 then lut[i] := 0 else if lut[i] > 255 then lut[i] := 255;
  end;
  RGB := src.ScanLine[0];
  RGBOffset := Integer(src.ScanLine[1]) - Integer(RGB);
  for y := 0 to src.Height - 1 do begin
    for x := 0 to src.Width - 1 do begin
      RGB[x].R := LUT[RGB[x].R];
      RGB[x].G := LUT[RGB[x].G];
      RGB[x].B := LUT[RGB[x].B];
    end;
    RGB:= PRGBArray(Integer(RGB) + RGBOffset);
  end;
end;

procedure SmoothReSize(Src, Dest: TBitmap);
var
  x, y, px, py: Integer;
  i, x1, x2, z, z2, iz2: Integer;
  w1, w2, w3, w4: Integer;
  Ratio: Integer;
  sDst, sDstOff: Integer;
  sScanLine: Array of PRGBArray;
  Src1, Src2: PRGBArray;
  C, C1, C2: TRGB24;
begin
  sDst:= Integer(src.ScanLine[0]);
  sDstOff:= Integer(src.ScanLine[1]) - Integer(sDst);
  SetLength(sScanLine, Src.Height);
  for i:= 0 to Src.Height - 1 do begin
    sScanLine[i]:= PRGBArray(sDst);
    sDst:= sDst + sDstOff;
  end;
  sDst:= Integer(Dest.ScanLine[0]);
  sDstOff:= Integer(Dest.ScanLine[1]) - sDst;
  Ratio:= ((Src.Width - 1) shl 15) div Dest.Width;
  py:= 0;
  for y := 0 to Dest.Height - 1 do begin
    Src1:= sScanLine[py shr 15];
    if py shr 15 < Src.Height - 1 then Src2:= sScanLine[py shr 15 + 1] else Src2:= Src1;
    z2:= py and $7FFF;
    iz2:= $8000 - z2;
    px:= 0;
    for x := 0 to Dest.Width - 1 do begin
      x1 := px shr 15;
      x2:= x1 + 1;
      C1:= Src1[x1];
      C2:= Src2[x1];
      z:= px and $7FFF;
      w2:= (z * iz2) shr 15;
      w1:= iz2 - w2;
      w4:= (z * z2) shr 15;
      w3:= z2 - w4;
      C.R:= (C1.R * w1 + Src1[x2].R * w2 + C2.R * w3 + Src2[x2].R * w4) shr 15;
      C.G:= (C1.G * w1 + Src1[x2].G * w2 + C2.G * w3 + Src2[x2].G * w4) shr 15;
      C.B:= (C1.B * w1 + Src2[x2].B * w2 + C2.B * w3 + Src2[x2].B * w4) shr 15;
      PRGBArray(sDst)[x]:= C;
      Inc(px, Ratio);
    end;
    sDst:= sDst + SDstOff;
    Inc(py, Ratio);
  end;
  SetLength(sScanLine, 0);
end;

function CalcImgSize(w, h, tw, th: integer): TPoint;
begin
  Result.X := 0;
  Result.Y := 0;
  if (w < tw) and (h < th) then begin
    Result.X := w;
    Result.Y := h;
  end
  else if (w = 0) or (h = 0) then Exit
  else begin
    if w > h then begin
      if w < tw then tw := w;
      Result.X := tw;
      Result.Y := Trunc(tw * h / w);
      if Result.Y > th then begin
        Result.Y := th;
        Result.X := Trunc(th * w / h);
      end;
    end else begin
      if h < th then th := h;
      Result.Y := th;
      Result.X := Trunc(th * w / h);
      if Result.X > tw then begin
        Result.X := tw;
        Result.Y := Trunc(tw * h / w);
      end;
    end;
  end;
end;

procedure TfrmMain.btnSaveClick(Sender: TObject);
begin
  if dlgSave.Execute then
    imgSrc.Picture.Bitmap.SaveToFile(dlgSave.FileName);
end;

procedure TfrmMain.DoBCS;
var
  tmp, bmp: TBitmap;
  pt: TPoint;
begin
  bmp:= TBitmap.Create;
  bmp.Assign(img);
  bmp.PixelFormat:= pf24Bit;
  tmp:= TBitmap.Create;
  tmp.PixelFormat:= pf24Bit;
  pt:= CalcImgSize(bmp.Width, bmp.Height, imgDest.Width, imgDest.Height);
  tmp.Width:= pt.X;
  tmp.Height:= pt.Y;
  SmoothReSize(bmp, tmp);
  if radAuto.Checked then
    fxHistEqu(tmp, 0.3)
  else if radExp.Checked then
    fxExposure(tmp, tbExposure.Position)
  else
    fxBCS(tmp, tbBright.Position, tbContrast.Position, tbSaturation.Position);
  imgDest.Picture.Bitmap.Assign(tmp);
  imgDest.Refresh;
  bmp.Free;
  tmp.Free;
end;

procedure TfrmMain.MakePreviewImage;
var
  pt: TPoint;
begin
  if not imgLoaded then Exit;  
  pt:= CalcImgSize(imgSrc.Picture.Width, imgSrc.Picture.Height, imgDest.Width, imgDest.Height);
  img.Width:= pt.X;
  img.Height:= pt.Y;
  imgSrc.Picture.Bitmap.PixelFormat:= pf24Bit;
  SmoothReSize(imgSrc.Picture.Bitmap, img);
  DoBCS;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  DoubleBuffered:= True;
  img:= TBitmap.Create;
  img.PixelFormat:= pf24Bit;
  imgLoaded:= False;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  img.Free;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  MakePreviewImage;
end;

procedure TfrmMain.tbBrightChange(Sender: TObject);
begin
  DoBCS;
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
var
  Jpg: TJpegImage;
begin
  if dlgOpen.Execute then begin
    if UpperCase(ExtractFileExt(dlgOpen.FileName)) = '.JPG' then begin
      Jpg:= TJpegImage.Create;
      Jpg.LoadFromFile(dlgOpen.FileName);
      imgSrc.Picture.Bitmap.PixelFormat:= pf24Bit;
      imgSrc.Picture.Bitmap.Width:= Jpg.Width;
      imgSrc.Picture.Bitmap.Height:= Jpg.Height;
      imgSrc.Canvas.Draw(0,0, Jpg);
      Jpg.Free;
    end else imgSrc.Picture.LoadFromFile(dlgOpen.FileName);
    imgLoaded:= True;
  end;
  MakePreviewImage;
end;

end.
