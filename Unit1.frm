object Form1: TForm1
  Left = 389
  Height = 671
  Top = 232
  Width = 810
  AllowDropFiles = True
  Caption = 'FotoCropResize v2.1'
  ClientHeight = 671
  ClientWidth = 810
  Constraints.MinHeight = 650
  Constraints.MinWidth = 700
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDropFiles = FormDropFiles
  LCLVersion = '6.3'
  object ImgView: TImgView32
    Left = 0
    Height = 431
    Top = 240
    Width = 696
    Align = alClient
    Bitmap.ResamplerClassName = 'TNearestResampler'
    BitmapAlign = baCenter
    Color = clBtnFace
    ParentColor = False
    Scale = 1
    ScaleMode = smOptimalScaled
    ScrollBars.Color = clScrollBar
    ScrollBars.ShowHandleGrip = True
    ScrollBars.Style = rbsDefault
    ScrollBars.Size = 17
    ScrollBars.Visibility = svAuto
    OverSize = 0
    TabOrder = 0
    OnDblClick = ImgViewDblClick
    OnMouseDown = ImgViewMouseDown
    OnMouseEnter = Img_1MouseEnter
    OnMouseLeave = Img_1MouseLeave
    OnPaintStage = ImgViewPaintStage
  end
  object BCPanel2: TBCPanel
    Left = 696
    Height = 431
    Top = 240
    Width = 114
    Align = alRight
    Background.Color = clBtnFace
    Background.ColorOpacity = 255
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.StartColorOpacity = 255
    Background.Gradient1.DrawMode = dmSet
    Background.Gradient1.EndColor = 15646319
    Background.Gradient1.EndColorOpacity = 255
    Background.Gradient1.ColorCorrection = True
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient1.Sinus = False
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.StartColorOpacity = 255
    Background.Gradient2.DrawMode = dmSet
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.EndColorOpacity = 255
    Background.Gradient2.ColorCorrection = True
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient2.Sinus = False
    Background.Gradient1EndPercent = 100
    Background.Style = bbsGradient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Color = clBlack
    Border.ColorOpacity = 255
    Border.LightColor = clWhite
    Border.LightOpacity = 255
    Border.LightWidth = 0
    Border.Style = bboSolid
    Border.Width = 1
    FontEx.Color = clDefault
    FontEx.EndEllipsis = False
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 0
    FontEx.SingleLine = True
    FontEx.Shadow = False
    FontEx.ShadowColor = clBlack
    FontEx.ShadowColorOpacity = 255
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    FontEx.TextAlignment = bcaCenter
    FontEx.WordBreak = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    Rounding.RoundOptions = []
    TabOrder = 1
    object btnWytnij: TBCButton
      Left = 8
      Height = 33
      Top = 48
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Wytnij'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000000000000002030B1409055436180B81481D0F579C46
        1E04000000000000000000000000000000000000000000000000000000000000
        000000000000000000000206040227120979A65B25FCD48A40FFC87B32FFA552
        1E8E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000003137A4319D8D2862EE8D3973C4091602189BA6E
        25FFA04E191E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000008A511BDBC36F27B400000000110B0646B26C
        27FDB76A2E420000000000000000000000000000000000000000000201020D05
        034843220F964F2F148D331C083D673C1582C6762CF02E0F076244210EAFC67F
        32FFBF79391D00000000000000000000000000000000000000000B03033B8445
        1CE5D6822EFFDD832CFBCF7F2EF9915B20A3A86B24CBC88035FFD08C46FFE29C
        46A500000000000000000000000000000000000000000000000031150A7ED586
        3DFFB88033607C4919076D391774CB863BFF966B32C4B39060F2E3BE8AFFA27B
        496B291E0C1C0701000E0000000000000000000000000000000032160A65D685
        39FF7F551E640000001118060576C47F3BFFD6AD73FFA2A8ADFF9D9D9AFFA8A4
        9EF29E988BDA8D8578CB6C665AAD5650467A453C2F1900000000220D0A11A554
        23ADBB7225FF975921EFB36E2DFFDB9A4FE1BB986EB1999791EEC6BDAFFFD3CA
        BFFFF7EDE1FFFFFBECFFFFFBEEFFF7F1E4FFB9B1A6DC8D84762A000000009140
        1F0AB7601F54BD6F2C66CA883C57C87F2F23000000006B655CB5F8EFDFFFC0B8
        A9DFBBB09E8FCEC5B8D2E2DACDF5F4E8DBFEFEFCEEFFBCB5A8C1000000000000
        000000000000000000000000000000000000000000005A5349A4F8EEDFFFD4CB
        BEEAA89A8601B5ABA106C8BFB010B0A39045C6BBAE8CCFC6B9A8000000000000
        00000000000000000000000000000000000000000000524A3F93F8EEE1FFE2D8
        CBF9B0A18D200000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000004C443975F2E9DBFFF5EC
        DCFFB2A693570000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000322A1D44E0D9CCFFFFF9
        E9FFC7BDAD870000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001C1303059A9488B7FCF9
        EBFFE8DFD1AB0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D655A15C9C2
        B794D4CBC0AB0000000000000000000000000000000000000000
      }
      InnerMargin = 0
      OnClick = btnWytnijClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnZapiszJako: TBCButton
      Left = 8
      Height = 33
      Top = 224
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Zapisz jako'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000C1761BFFC275
        19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
        04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
        36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
        F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
        3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
        7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
        47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
        DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
        50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
        5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
        63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
        6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
        81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
        5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
        8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
        CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
        93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
        A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
        97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
        6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
        9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
        86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
        9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
        78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
        D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
        DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
        82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
        96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
      }
      InnerMargin = 0
      OnClick = btnZapiszJakoClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnZaznacz: TBCButton
      Left = 8
      Height = 33
      Top = 8
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Zaznacz'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00232323CD1F1F1FFE1A1A1AC7FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00040404BB010101FF000000C4FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF002B2B2BFFB2B2B2FF222121FFDA946AFFD89067FFD88D
        63FFD5895FFFD5865DFF090909FFA6A6A6FF030303FFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00333333E22D2D2DFF473F3AFFE4B191FFE3AE8FFFE2AB
        8BFFE1A989FFDFA786FF42342CFF0A0A0AFF070707D6FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E1A57CFFE6B798FFE5B495FFE4B192FFE3AF
        8FFFE2AC8DFFE1A98AFFE0A787FFD5895FFFFFFFFF00FFFFFF00FFFFFF005F5F
        5FCD595959FF555555CDFFFFFF00E2A980FFE8BA9CFFE7B899FFE6B596FFE4B3
        93FFE3AF91FFE3AD8DFFE1AA8BFFD88D63FFFFFFFF00FFFFFF00FFFFFF006767
        67FFC6C6C6FF5D5D5DFFF3BC9AFFE3AC85FFEABE9FFFE8BB9DFFE8B89AFFE6B6
        97FFE5B394FFE4B191FFE3AE8FFFD99167FFFFFFFF00FFFFFF00FFFFFF007070
        70CC6B6B6BFF837B76FFF7CEB4FFE5AF88FFEBC0A2FFEABEA0FFE8BC9EFFE8BA
        9BFFE6B798FFE5B495FFE4B192FFDA966CFFFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00F5C4A5FFF7D1B8FF7F7874FF5F5F5FFF6A6562FFDBB69AFFEABFA1FFE9BD
        9EFFE8BA9CFFE7B899FF544B45FF2C2C2CFF272727CDFFFFFF00FFFFFF00FFFF
        FF00F5C5A9FFF7D2BBFF6F6F6FFFC9C9C9FF626262FFD7A984FFE5AF86FFE3AC
        85FFE3AA81FFE1A67FFF3A3A3AFFB7B7B7FF2F2F2FFFFFFFFF00FFFFFF00FFFF
        FF00F5C8ABFFF7D3BDFF8D8783FF717171FF7E7975FFEBC6AFFFF7CEB4FFF7CD
        B3FFF3BB99FFFFFFFF00424242CC3D3D3DFF383838CCFFFFFF00FFFFFF00FFFF
        FF00F5C9ACFFF7D5BFFFF7D4BEFFF7D3BCFFF7D2BAFFF7D1B8FFF7D0B7FFF7CE
        B5FFF5BE9BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008686
        86CD838383FF99918CFFF7D5C0FFF7D5BEFFF7D3BDFFF7D2BBFFF7D1BAFF8D83
        7DFF636363FF5F5F5FC4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008989
        89FFD3D3D3FF848484FFF5CBAEFFF5C8ACFFF5C8ABFFF5C5A9FFF5C5A7FF6F6F
        6FFFC9C9C9FF676767FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008989
        89E2888888FF878787D6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007878
        78BF737373FF717171D6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      InnerMargin = 0
      OnClick = btnZaznaczClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnDodajDoSzablonu: TBCButton
      Left = 8
      Height = 33
      Top = 264
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Dodaj'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000C6751BFFD69334FFD18420FFCC7C15FFCA7606FFC26A
        00FFA96100FF904000FF00000000000000000000000000000000000000000000
        00000000000000000000DFA442FFFBFFFFFFF8D772FFF5C75BFFF1BD41FFEDAE
        25FFD59000FFB05005FF00000000000000000000000000000000000000000000
        00000000000000000000EDAB2AFFEDAB2AFFE59E29FFE29B25FFDE9323FFDA8F
        22FFD4841CFFD3831CFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000DD982CFFDEA13AFFDA9228FFD48924FFD08322FFCC7B
        1BFFC0680EFFB05503FF00000000000000000000000000000000000000000000
        00000000000000000000E09E36FFFBFFFFFFFBE18AFFF8DE81FFF6D270FFF5C9
        5FFFE5A630FFAE5202FF00000000000000000000000000000000000000000000
        00000000000000000000DC9A32FFFAFFFFFFF6D575FFF3CB68FFF2C257FFF1BB
        43FFE0951BFFAE5001FF00000000000000000000000000000000F1B538FFEBAD
        31FFE2941FFFDD8E1CFFD9962FFFF9FFFFFFF5CD6AFFF3C35FFFF1C04CFFEEB4
        3AFFDC9212FFAB4C00FFA54C00FF984500FF8E4300FF8F4400FFF0B134FFE9AD
        36FFF6F0D4FFF5E6BEFFF4D678FFF9E39EFFF4CB64FFF1C155FFEEB943FFEBB0
        33FFE49A08FFD08100FFC17700FFCA7D00FFA24600FF8E4300FF00000000EAA8
        2BFFE9AD36FFF9F5E3FFF5E6BEFFF6D777FFF2C659FFF1BD46FFEFB237FFEAAA
        26FFE39500FFCC8600FFC68200FFAB5607FF8C4200FF00000000000000000000
        0000DD8E21FFDB9528FFEEECE1FFF5E6BEFFF0BC45FFEDB135FFEAA622FFE79D
        0DFFC88200FFECB93EFFAB5607FF944200FF0000000000000000000000000000
        000000000000D7891BFFD68D24FFEDE3D7FFEEB334FFEAAB2BFFE7A116FFE59A
        00FFE8B830FFC0680EFF9C4400FF000000000000000000000000000000000000
        00000000000000000000D38017FFD0831FFFF1C35EFFE9A119FFE79907FFE8AD
        18FFC0680EFFA34A00FF00000000000000000000000000000000000000000000
        0000000000000000000000000000CE7811FFCE8836FFE9B939FFE29000FFC068
        0EFFA94C00FF0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BF6005FFCE8836FFC0680EFFB052
        00FF000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000BA5F07FFB65904FF0000
        0000000000000000000000000000000000000000000000000000
      }
      InnerMargin = 0
      OnClick = btnDodajDoSzablonuClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnWczytajFoto: TBCButton
      Left = 8
      Height = 33
      Top = 144
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Wczytaj'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF0063B6
        F84D64B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5
        F77864B5F77864B5F77864B5F77864B5F77863B6F84DFFFFFF00FFFFFF0063B4
        F7C363B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B4F7C3FFFFFF00FFFFFF0063B5
        F7EA63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF86C5F4FFA2D1F2FFA2D1
        F2FFA2D1F2FFA2D1F2FF8EC8F3FF63B5F7FF63B5F7EAFFFFFF0063B8F11263B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCDE0E4FFC3D8
        DCFFC3D8DCFFC9DDE1FFB5DAF0FF63B5F7FF63B5F7FF63B8F11262B3F63963B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCCDFE3FFC6DB
        DFFFD1E3E6FFD6E7EAFFB5DAF0FF63B5F7FF63B5F7FF62B3F63962B5F76063B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF97CCF3FFC0DFEFFFC0DF
        EFFFC0DFEFFFC0DFEFFFA3D1F2FF63B5F7FF63B5F7FF62B5F76062B5F78763B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF62B5F78763B5F8AF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F8AF63B5F7D663B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7D664B5F7A163B0
        EEC477BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BB
        F2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA64B0EEC564B5F7A1FFFFFF00648E
        B9E9DBE4ECFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5
        EBFFDCE5EBFFDCE5EBFFDCE5EBFFDBE4ECFF6891BAEAFFFFFF00FFFFFF005B88
        B5E8A7BACBFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6
        CEFFBBC6CEFFBBC6CEFFBBC6CEFFA9BCCCFF5B88B5E8FFFFFF00FFFFFF005B88
        B5E87195B9FF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3
        BCFF87A3BCFF87A3BCFF87A3BCFF7296B9FF5B88B5E8FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88
        B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5E6FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5C87B5D15889B11A608AB518608AB518608A
        B518608AB518608AB518608AB518608AB518558EB812FFFFFF00FFFFFF005A87
        B4665B88B5785B88B5785B88B5785988B82BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      InnerMargin = 0
      OnClick = ImgViewDblClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnZapiszDoOTIS: TBCButton
      Left = 0
      Height = 33
      Hint = 'Zapisuje zdjęcie do bazy zdjęć OTIS. !!!'
      Top = 352
      Width = 112
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Zapisz do OTIS'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      Enabled = False
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000C1761BFFC275
        19FFBD6B13FFB96504FFB96504FFB96504FFBA6504FFBA6504FFBA6504FFBA65
        04FFBA6504FFBA6504FFBA6504FFBC690AFFB96A15FFC3791FFFD5933DFFEFB7
        36FFCDC6C0FFE9F8FFFFDBE5F6FFDBE8F8FFDBE8F8FFDBE8F9FFDBE8F8FFDAE7
        F8FFDBE7F8FFD8E4F5FFE9F6FFFFCDC6C0FFEAA714FFC0761DFFCD9551FFE8AE
        3CFFDCD7D4FFECE8E9FFADA0A2FFA79B9EFF9E9395FF94898CFF8A8185FF8379
        7CFF7B7276FF685F64FFECE8E9FFDCD7D4FFE59E20FFC77B25FFD09653FFEAB4
        47FFDCD7D4FFEFF0EFFFDFDEDCFFE1E0DFFFE0DFDEFFDFE0DDFFE0DFDDFFDFDE
        DDFFDFE0DEFFDBD9D9FFEDEDEDFFDCD7D4FFE7A62BFFC9802BFFD49B58FFEBB9
        50FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFE8AC37FFCC8531FFD69E5BFFEDBD
        5AFFDCD7D4FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEAB340FFD08B34FFD9A45EFFF0C2
        63FFDCD7D4FFECE8E9FFA99D9FFFA4999EFF9A9194FF92888BFF897F85FF8279
        7CFF7A7177FF655C62FFECE8E9FFDCD7D4FFEDB749FFD2903AFFD8A35CFFF0C6
        6DFFDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4FFEEBD54FFD7963EFFDEAC69FFF9D2
        81FFC1975CFF9A7B60FF95775EFF97795DFF97795DFF97795DFF97795DFF9779
        5CFF97795CFF95775EFF9A7A5EFFC19A64FFF7CA6BFFD99B44FFDDAB67FFF6D5
        8BFFFFD056FFC0A887FFC8C5C9FFCEC6BFFFCDC6C0FFCDC6C0FFCDC6BFFFD6D0
        CAFFD6D3D0FFCFCED4FFC0A888FFFFD25DFFF3CC75FFDCA148FFDCA966FFF6D9
        93FFFBC85DFFC2B4A2FFD7DEEBFFDDDDDDFFDCDDDEFFDCDBDDFFE7E8EAFFC8BA
        A7FFA29692FFC2B4A2FFC6BCA9FFFBCB63FFF3D07EFFE0A74CFFE5B973FFF6DA
        97FFFBCC62FFC8BAA7FFDDE0E9FFE1DFDDFFE0DFDEFFDFDDDCFFEFF3F9FF9F88
        6FFFE5AF47FF9E9189FFC7BDB2FFFDCF6AFFF5D484FFE3AC51FFE9BC75FFF8DD
        9EFFFDCF69FFCEC0AFFFE3E7EFFFE7E5E3FFE6E5E4FFE5E4E2FFF1F6FFFFBAA3
        86FFFFE873FFB5AB9EFFCAC0B8FFFFD26EFFF9DA8EFFE7B25BFFEAC079FFF8E0
        9BFFFBD165FFD3C4AFFFEAEEF6FFECEBE8FFECEBE9FFEBE9E6FFFBFFFFFFA28E
        78FFDEAF4FFFA89C95FFD1C7B9FFFFDA78FFF5D889FFE2A442FFECC47EFFFEF4
        D5FFFFE290FFDCD7D4FFF5FFFFFFF6FEFFFFF6FEFFFFF6FDFFFFFFFFFFFFDFDD
        DCFFC8BAA7FFDFDDDCFFE5E4E2FFFFDE88FFE4AA45FFDD973419ECC681FFF0CA
        82FFF4CA7DFFE8C788FFEFCF94FFEED192F1EDCF92FFEED092FFEED093FFF2D3
        96FFF7D79BFFF6D69BFFE6C48AFFEBB552FFE19E351100000000
      }
      InnerMargin = 0
      OnClick = btnZapiszDoOTISClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      ShowHint = True
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object edIDO: TEdit
      Left = 8
      Height = 23
      Top = 320
      Width = 96
      NumbersOnly = True
      OnChange = edIDOChange
      TabOrder = 0
      TextHint = 'nr IDO'
    end
    object btnFloodFill: TBCButton
      Left = 8
      Height = 33
      Top = 88
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'FloodFill'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      InnerMargin = 0
      OnClick = btnFloodFillClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object btnPasteFoto: TBCButton
      Left = 8
      Height = 33
      Top = 184
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Wklej'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400006400000064000000000000000000000000000000328B
        BEFF3486C4F33488C4F33488C4F33288C8F33596DCF36A4B2BF3B8915AF3AF93
        69F3AF9266F3B09266F3B4976CF3B4996FF3BAA178F485581BE349AFFFFF49BB
        FFFF3FB8FFFF41B8FFFF40B6FFFF41BCFFFF2BC1FFFF737765FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEA686F646A5FEF2349F
        FFFF2CA0FFFF2FA0FFFF2D9DFFFF31A4FFFF0CA2FFFF696F69FFFFEBD9FFF2F2
        EDFFF1EEE7FFF1EEE7FFEFEDE3FFECE9E1FFFFFFFFFFB69B73F146ABFEF33AAA
        FFFF35A9FFFF37A9FFFF39A9FFFF3BADFFFF1CACFFFF6F7269FFFFEEDCFFF4F4
        F1FFF3F1E9FFF4F1EBFFF6F2EDFFF8F1EDFFFFFFFFFFB69F78F147ADFEF33EB1
        FFFF39AAFFFF3BACFFFF3BABFFFF3DB1FFFF22B1FFFF6F7667FFFFEDD9FFF3F4
        EDFFF3EFEAFFF6F1ECFFFBF7F4FFFBF4F1FFFFFFFFFFB59A70F149ADFEF343B5
        FFFF3CADFFFF3EAFFFFF3EAEFFFF43B5FFFF26B5FFFF727D70FFFFF5E4FFF8F9
        F5FFFBF7F3FFFBFBF7FFFBFCF8FFF2EEE9FFF2EFE9FFAD9064F14EAFFEF348B9
        FFFF40B3FFFF43B4FFFF41B0FFFF44B7FFFF29B7FFFF7B8579FFFFF8EEFFFBFC
        FFFFF9FCFBFFFBFBFBFFF5F1ECFFE9E0D6FFE1D8C9FFA28451F54FB1FEF34EBF
        FFFF43B5FFFF48B8FFFF46B7FFFF47BBFFFF2CBAFFFF818980FFFFF8EDFFFBFD
        FFFFFCFBF9FFF7F4EDFFD9CEBAFFCEBFA1FFBCA27CFF966E35ED51B4FEF353C2
        FFFF46B9FFFF49B9FFFF49B6FFFF4ABBFFFF2BBAFFFF818E88FFFFF8EFFFFBFE
        FFFFF4F2EBFFEAE1D8FFCAB597FFFBFBF9FFF3EEEAFFB0966AFF54B5FEF358C4
        FFFF4ABBFFFF50CFFFFF54D8FFFF51D9FFFF3AD5FFFF9F9D8EFFFFFFFCFFFFFF
        FFFFFDE6D0FFEACAAAFFC19359FFF4EFEBFFAA8D5DFF0000000055B6FEF25ECA
        FFFF54CEFFFF3996BEFF145876FF1E668DFF02639DFF4E5C5AFF908570FF827E
        6AFF869D9AFF839B8DFF6C7D70FFC39558FF00000000000000005DB8FEFF5AD4
        FFFF44C1FBFF81716EFF91796DFF887A74FF8D7B72FF7A7E83FF787E87FF5D59
        5DFF0074CBFF25BEFFFF16A4FFFF0085FF44000000000000000058B1FECD77D3
        FFFF4DB8F4FFCFC9C6FFFFFFFCFFEFEFEEFFFFFEFDFFF1EFEFFFFFFFFEFFD7CD
        C4FF1166ACFF3AACFFFF2799FBFF0B87F13000000000000000000000000048AB
        FF5140A5F63EBFC2C1FFFFFCF6FFFFFFFFFFB3B1B1FFFCFEFEFFFFFFFFFFC5C8
        C5FF0064BF3E1890FE4D0C89F528000000000000000000000000000000000000
        00000000000000000000EBE4DF29E1E2E2FFABABABFFE4E2E2FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C9C9C91EA6A6A6FFB7B7B780000000000000
        0000000000000000000000000000000000000000000000000000
      }
      InnerMargin = 0
      OnClick = btnPasteFotoClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
  end
  object BCPanel1: TBCPanel
    Left = 0
    Height = 240
    Top = 0
    Width = 810
    Align = alTop
    Background.Color = clBtnFace
    Background.ColorOpacity = 255
    Background.Gradient1.StartColor = clWhite
    Background.Gradient1.StartColorOpacity = 255
    Background.Gradient1.DrawMode = dmSet
    Background.Gradient1.EndColor = 15646319
    Background.Gradient1.EndColorOpacity = 255
    Background.Gradient1.ColorCorrection = True
    Background.Gradient1.GradientType = gtLinear
    Background.Gradient1.Point1XPercent = 0
    Background.Gradient1.Point1YPercent = 0
    Background.Gradient1.Point2XPercent = 0
    Background.Gradient1.Point2YPercent = 100
    Background.Gradient1.Sinus = False
    Background.Gradient2.StartColor = clWhite
    Background.Gradient2.StartColorOpacity = 255
    Background.Gradient2.DrawMode = dmSet
    Background.Gradient2.EndColor = clBlack
    Background.Gradient2.EndColorOpacity = 255
    Background.Gradient2.ColorCorrection = True
    Background.Gradient2.GradientType = gtLinear
    Background.Gradient2.Point1XPercent = 0
    Background.Gradient2.Point1YPercent = 0
    Background.Gradient2.Point2XPercent = 0
    Background.Gradient2.Point2YPercent = 100
    Background.Gradient2.Sinus = False
    Background.Gradient1EndPercent = 100
    Background.Style = bbsGradient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelWidth = 1
    Border.Color = clBlack
    Border.ColorOpacity = 255
    Border.LightColor = clWhite
    Border.LightOpacity = 255
    Border.LightWidth = 0
    Border.Style = bboSolid
    Border.Width = 1
    FontEx.Color = clDefault
    FontEx.EndEllipsis = False
    FontEx.FontQuality = fqSystemClearType
    FontEx.Height = 0
    FontEx.SingleLine = True
    FontEx.Shadow = False
    FontEx.ShadowColor = clBlack
    FontEx.ShadowColorOpacity = 255
    FontEx.ShadowRadius = 5
    FontEx.ShadowOffsetX = 5
    FontEx.ShadowOffsetY = 5
    FontEx.Style = []
    FontEx.TextAlignment = bcaCenter
    FontEx.WordBreak = False
    Rounding.RoundX = 1
    Rounding.RoundY = 1
    Rounding.RoundOptions = []
    TabOrder = 2
    object Panel_1: TPanel
      Left = 24
      Height = 92
      Top = 16
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 0
      object Img_1: TImage32
        Tag = 1
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_2: TPanel
      Left = 104
      Height = 92
      Top = 16
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 1
      object Img_2: TImage32
        Tag = 2
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_3: TPanel
      Left = 184
      Height = 92
      Top = 16
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 2
      object Img_3: TImage32
        Tag = 3
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_4: TPanel
      Left = 264
      Height = 92
      Top = 16
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 3
      object Img_4: TImage32
        Tag = 4
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_5: TPanel
      Left = 24
      Height = 92
      Top = 112
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 4
      object Img_5: TImage32
        Tag = 5
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_6: TPanel
      Left = 104
      Height = 92
      Top = 112
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 5
      object Img_6: TImage32
        Tag = 6
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_7: TPanel
      Left = 184
      Height = 92
      Top = 112
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 6
      object Img_7: TImage32
        Tag = 7
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object Panel_8: TPanel
      Left = 264
      Height = 92
      Top = 112
      Width = 72
      BevelOuter = bvLowered
      ClientHeight = 92
      ClientWidth = 72
      TabOrder = 7
      object Img_8: TImage32
        Tag = 8
        Left = 1
        Height = 90
        Top = 1
        Width = 70
        Align = alClient
        Bitmap.OuterColor = -16777216
        Bitmap.ResamplerClassName = 'TNearestResampler'
        BitmapAlign = baCenter
        Color = clBtnFace
        ParentColor = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        Scale = 1
        ScaleMode = smOptimalScaled
        ShowHint = True
        TabOrder = 0
        OnDblClick = Img_1DblClick
        OnMouseEnter = Img_1MouseEnter
        OnMouseLeave = Img_1MouseLeave
        OnPaintStage = Img_1PaintStage
      end
    end
    object btnDrukuj: TBCButton
      Left = 368
      Height = 33
      Top = 16
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Drukuj'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        00000000000000000000D7C39BFFECE3D6FFECE3D6FFECE3D6FFECE3D6FFECE3
        D6FFECE3D6FFD7C39BFF00000000000000000000000000000000958F8FBF9C96
        96CB9C9696E469636AF1C4AB7FFFEDE1D5FFEDE1D5FFEDE1D5FFEDE1D5FFEDE1
        D5FFEDE1D5FFC4AB7FFF69636AE99C9696EC9C9696DF999292D3958F8FFFC3C0
        BFFFC3C0BFFF837D84FFC6A874FFE0CBAEFFE0CBAEFFE0CBAEFFE0CBAEFFE0CB
        AEFFE0CBAEFFC6A874FF837D84FFC3C0BFFFC3C0BFFF999292FFA49FA1FFD1CF
        CEFFD1CFCEFFD3D2D1FFD2D2D3FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0D2FFD0D0
        D2FFD0D0D2FFD2D2D3FFD3D2D1FFBACAD7FF6E9BE3FFA49FA1FFAAA7A7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7D7FFD9D7
        D7FFD9D7D7FFD9D7D7FFD9D7D7FF8AC3E9FF004BFBFFABA8A8FFB7B3B3FFE6E8
        E9FFD6C5AFFFBC6B10FFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A0FFFBB6A
        0FFFBB6A0FFFBB6A0FFFBC6B10FFD6C5AFFFE6E8E9FFB8B5B5FFBCB9BAFFEEF2
        F5FFBA7B3EFFE1A942FFE1A842FFE1A842FFE1A842FFE1A842FFE1A842FFE1A8
        42FFE1A842FFE1A842FFE1A942FFBA7B3EFFEEF2F5FFBFBBBCFFCDC8C9FFF8FC
        FFFFCD9753FFEEC670FFEEC771FFEEC771FFEEC771FFEEC771FFEEC771FFEEC7
        71FFEEC771FFEEC771FFEEC670FFCD9753FFF8FCFFFFCECBCCFFD2D0D0FFFCFF
        FFFFD7A55CFFEDC977FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF68FFE9BF
        68FFE9BF68FFE9BF68FFEDC977FFD7A55CFFFCFFFFFFD4D1D0FFDEDCDBFFFFFF
        FFFFE8C070FFE0AC54FFB99D6BFFD7BD91FFD7BD91FFD7BD91FFD7BD91FFD7BD
        91FFD7BD91FFB99D6BFFE0AC54FFE8C070FFFFFFFFFFE3DFDFFFCAC3C5E0B0AF
        B4D9D8A859D8C9924BE4C4AB7FFFDFCAADFFDFCAADFFDFCAADFFDFCAADFFDFCA
        ADFFDFCAADFFC4AB7FFFC9924BF0D8A859DFB0AFB4D5CAC2C4E0000000000000
        00000000000000000000D0BD98FFECDFD1FFECDFD1FFECDFD1FFECDFD1FFECDF
        D1FFECDFD1FFD0BD98FF00000000000000000000000000000000000000000000
        00000000000000000000D5C4A4FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4D8FFEFE4
        D8FFEFE4D8FFD5C4A4FF00000000000000000000000000000000000000000000
        00000000000000000000DED0B8FFF5EDE4FFF5EDE4FFF5EDE4FFF5EDE4FFF5ED
        E4FFF5EDE4FFDED0B8FF00000000000000000000000000000000000000000000
        00000000000000000000E2D6C1FFF8F3EAFFF8F3EAFFF8F3EAFFF8F3EAFFF8F3
        EAFFF8F3EAFFE2D6C1FF00000000000000000000000000000000000000000000
        00000000000000000000E3D8C6E3EFE8DBFFEFE8DBFFEFE8DBFFEFE8DBFFEFE8
        DBFFEFE8DBFFE3D8C6D300000000000000000000000000000000
      }
      InnerMargin = 0
      OnClick = btnDrukujClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object Panel1: TPanel
      Left = 0
      Height = 22
      Top = 218
      Width = 810
      Align = alBottom
      BevelOuter = bvNone
      ClientHeight = 22
      ClientWidth = 810
      Color = 16755285
      ParentColor = False
      TabOrder = 8
      object lblFileEdit: TLabel
        Left = 10
        Height = 22
        Top = 0
        Width = 54
        Align = alLeft
        BorderSpacing.Left = 10
        Caption = 'FileName'
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Layout = tlCenter
        ParentColor = False
        ParentFont = False
      end
    end
    object btnEdycjaSzablonu: TBCButton
      Left = 368
      Height = 33
      Top = 56
      Width = 96
      StateClicked.Background.Color = clBlack
      StateClicked.Background.ColorOpacity = 255
      StateClicked.Background.Gradient1.StartColor = 8404992
      StateClicked.Background.Gradient1.StartColorOpacity = 255
      StateClicked.Background.Gradient1.DrawMode = dmSet
      StateClicked.Background.Gradient1.EndColor = 4194304
      StateClicked.Background.Gradient1.EndColorOpacity = 255
      StateClicked.Background.Gradient1.ColorCorrection = True
      StateClicked.Background.Gradient1.GradientType = gtRadial
      StateClicked.Background.Gradient1.Point1XPercent = 50
      StateClicked.Background.Gradient1.Point1YPercent = 100
      StateClicked.Background.Gradient1.Point2XPercent = 0
      StateClicked.Background.Gradient1.Point2YPercent = 0
      StateClicked.Background.Gradient1.Sinus = False
      StateClicked.Background.Gradient2.StartColor = clWhite
      StateClicked.Background.Gradient2.StartColorOpacity = 255
      StateClicked.Background.Gradient2.DrawMode = dmSet
      StateClicked.Background.Gradient2.EndColor = clBlack
      StateClicked.Background.Gradient2.EndColorOpacity = 255
      StateClicked.Background.Gradient2.ColorCorrection = True
      StateClicked.Background.Gradient2.GradientType = gtLinear
      StateClicked.Background.Gradient2.Point1XPercent = 0
      StateClicked.Background.Gradient2.Point1YPercent = 0
      StateClicked.Background.Gradient2.Point2XPercent = 0
      StateClicked.Background.Gradient2.Point2YPercent = 100
      StateClicked.Background.Gradient2.Sinus = False
      StateClicked.Background.Gradient1EndPercent = 100
      StateClicked.Background.Style = bbsGradient
      StateClicked.Border.Color = clBlack
      StateClicked.Border.ColorOpacity = 255
      StateClicked.Border.LightColor = clWhite
      StateClicked.Border.LightOpacity = 255
      StateClicked.Border.LightWidth = 0
      StateClicked.Border.Style = bboNone
      StateClicked.Border.Width = 1
      StateClicked.FontEx.Color = 16770790
      StateClicked.FontEx.EndEllipsis = False
      StateClicked.FontEx.FontQuality = fqSystemClearType
      StateClicked.FontEx.Height = 0
      StateClicked.FontEx.SingleLine = True
      StateClicked.FontEx.Shadow = True
      StateClicked.FontEx.ShadowColor = clBlack
      StateClicked.FontEx.ShadowColorOpacity = 255
      StateClicked.FontEx.ShadowRadius = 2
      StateClicked.FontEx.ShadowOffsetX = 1
      StateClicked.FontEx.ShadowOffsetY = 1
      StateClicked.FontEx.Style = [fsBold]
      StateClicked.FontEx.TextAlignment = bcaCenter
      StateClicked.FontEx.WordBreak = False
      StateHover.Background.Color = clBlack
      StateHover.Background.ColorOpacity = 255
      StateHover.Background.Gradient1.StartColor = 16744448
      StateHover.Background.Gradient1.StartColorOpacity = 255
      StateHover.Background.Gradient1.DrawMode = dmSet
      StateHover.Background.Gradient1.EndColor = 8404992
      StateHover.Background.Gradient1.EndColorOpacity = 255
      StateHover.Background.Gradient1.ColorCorrection = True
      StateHover.Background.Gradient1.GradientType = gtRadial
      StateHover.Background.Gradient1.Point1XPercent = 50
      StateHover.Background.Gradient1.Point1YPercent = 100
      StateHover.Background.Gradient1.Point2XPercent = 0
      StateHover.Background.Gradient1.Point2YPercent = 0
      StateHover.Background.Gradient1.Sinus = False
      StateHover.Background.Gradient2.StartColor = clWhite
      StateHover.Background.Gradient2.StartColorOpacity = 255
      StateHover.Background.Gradient2.DrawMode = dmSet
      StateHover.Background.Gradient2.EndColor = clBlack
      StateHover.Background.Gradient2.EndColorOpacity = 255
      StateHover.Background.Gradient2.ColorCorrection = True
      StateHover.Background.Gradient2.GradientType = gtLinear
      StateHover.Background.Gradient2.Point1XPercent = 0
      StateHover.Background.Gradient2.Point1YPercent = 0
      StateHover.Background.Gradient2.Point2XPercent = 0
      StateHover.Background.Gradient2.Point2YPercent = 100
      StateHover.Background.Gradient2.Sinus = False
      StateHover.Background.Gradient1EndPercent = 100
      StateHover.Background.Style = bbsGradient
      StateHover.Border.Color = clBlack
      StateHover.Border.ColorOpacity = 255
      StateHover.Border.LightColor = clWhite
      StateHover.Border.LightOpacity = 255
      StateHover.Border.LightWidth = 0
      StateHover.Border.Style = bboNone
      StateHover.Border.Width = 1
      StateHover.FontEx.Color = clWhite
      StateHover.FontEx.EndEllipsis = False
      StateHover.FontEx.FontQuality = fqSystemClearType
      StateHover.FontEx.Height = 0
      StateHover.FontEx.SingleLine = True
      StateHover.FontEx.Shadow = True
      StateHover.FontEx.ShadowColor = clBlack
      StateHover.FontEx.ShadowColorOpacity = 255
      StateHover.FontEx.ShadowRadius = 2
      StateHover.FontEx.ShadowOffsetX = 1
      StateHover.FontEx.ShadowOffsetY = 1
      StateHover.FontEx.Style = [fsBold]
      StateHover.FontEx.TextAlignment = bcaCenter
      StateHover.FontEx.WordBreak = False
      StateNormal.Background.Color = clBlack
      StateNormal.Background.ColorOpacity = 255
      StateNormal.Background.Gradient1.StartColor = 4194304
      StateNormal.Background.Gradient1.StartColorOpacity = 255
      StateNormal.Background.Gradient1.DrawMode = dmSet
      StateNormal.Background.Gradient1.EndColor = 8405056
      StateNormal.Background.Gradient1.EndColorOpacity = 255
      StateNormal.Background.Gradient1.ColorCorrection = True
      StateNormal.Background.Gradient1.GradientType = gtLinear
      StateNormal.Background.Gradient1.Point1XPercent = 0
      StateNormal.Background.Gradient1.Point1YPercent = 0
      StateNormal.Background.Gradient1.Point2XPercent = 0
      StateNormal.Background.Gradient1.Point2YPercent = 100
      StateNormal.Background.Gradient1.Sinus = False
      StateNormal.Background.Gradient2.StartColor = 8405056
      StateNormal.Background.Gradient2.StartColorOpacity = 255
      StateNormal.Background.Gradient2.DrawMode = dmSet
      StateNormal.Background.Gradient2.EndColor = 4194304
      StateNormal.Background.Gradient2.EndColorOpacity = 255
      StateNormal.Background.Gradient2.ColorCorrection = True
      StateNormal.Background.Gradient2.GradientType = gtRadial
      StateNormal.Background.Gradient2.Point1XPercent = 50
      StateNormal.Background.Gradient2.Point1YPercent = 100
      StateNormal.Background.Gradient2.Point2XPercent = 0
      StateNormal.Background.Gradient2.Point2YPercent = 0
      StateNormal.Background.Gradient2.Sinus = False
      StateNormal.Background.Gradient1EndPercent = 60
      StateNormal.Background.Style = bbsGradient
      StateNormal.Border.Color = clBlack
      StateNormal.Border.ColorOpacity = 255
      StateNormal.Border.LightColor = clWhite
      StateNormal.Border.LightOpacity = 255
      StateNormal.Border.LightWidth = 0
      StateNormal.Border.Style = bboNone
      StateNormal.Border.Width = 1
      StateNormal.FontEx.Color = 16770790
      StateNormal.FontEx.EndEllipsis = False
      StateNormal.FontEx.FontQuality = fqSystemClearType
      StateNormal.FontEx.Height = 0
      StateNormal.FontEx.SingleLine = True
      StateNormal.FontEx.Shadow = True
      StateNormal.FontEx.ShadowColor = clBlack
      StateNormal.FontEx.ShadowColorOpacity = 255
      StateNormal.FontEx.ShadowRadius = 2
      StateNormal.FontEx.ShadowOffsetX = 1
      StateNormal.FontEx.ShadowOffsetY = 1
      StateNormal.FontEx.Style = [fsBold]
      StateNormal.FontEx.TextAlignment = bcaCenter
      StateNormal.FontEx.WordBreak = False
      Caption = 'Edycja szablonu'
      Color = clNone
      DropDownWidth = 16
      DropDownArrowSize = 8
      GlobalOpacity = 255
      InnerMargin = 0
      OnClick = btnEdycjaSzablonuClick
      ParentColor = False
      Rounding.RoundX = 12
      Rounding.RoundY = 12
      Rounding.RoundOptions = []
      RoundingDropDown.RoundX = 1
      RoundingDropDown.RoundY = 1
      RoundingDropDown.RoundOptions = []
      TextApplyGlobalOpacity = False
      MemoryUsage = bmuHigh
    end
    object BGRALabel1: TBGRALabel
      Left = 655
      Height = 48
      Top = 0
      Width = 155
      AutoSize = False
      Anchors = [akTop, akRight]
      Background.Color = clBtnFace
      Background.Gradient1.StartColor = clWhite
      Background.Gradient1.StartColorOpacity = 255
      Background.Gradient1.DrawMode = dmSet
      Background.Gradient1.EndColor = clBlack
      Background.Gradient1.EndColorOpacity = 255
      Background.Gradient1.ColorCorrection = True
      Background.Gradient1.GradientType = gtLinear
      Background.Gradient1.Point1XPercent = 0
      Background.Gradient1.Point1YPercent = 0
      Background.Gradient1.Point2XPercent = 0
      Background.Gradient1.Point2YPercent = 100
      Background.Gradient1.Sinus = False
      Background.Gradient2.StartColor = clWhite
      Background.Gradient2.StartColorOpacity = 255
      Background.Gradient2.DrawMode = dmSet
      Background.Gradient2.EndColor = clBlack
      Background.Gradient2.EndColorOpacity = 255
      Background.Gradient2.ColorCorrection = True
      Background.Gradient2.GradientType = gtLinear
      Background.Gradient2.Point1XPercent = 0
      Background.Gradient2.Point1YPercent = 0
      Background.Gradient2.Point2XPercent = 0
      Background.Gradient2.Point2YPercent = 100
      Background.Gradient2.Sinus = False
      Background.Gradient1EndPercent = 35
      Background.LightWidth = 0
      Background.LightOpacity = 64
      Caption = 'Jarosław Włodarczyk'#13#10'v. 2.1'
      ParentColor = False
      TextAlign = btaRight
      TextShadowColorOpacity = 255
      TextShadowOffsetX = 2
      TextShadowOffsetY = 2
      TextShadowRadius = 3
      GlobalOpacity = 255
      TextApplyGlobalOpacity = False
      WordWrap = True
      Font.Color = clWhite
    end
    object Panel_FloodFill: TPanel
      Left = 504
      Height = 158
      Top = 48
      Width = 298
      BevelOuter = bvNone
      ClientHeight = 158
      ClientWidth = 298
      Color = 16755285
      ParentColor = False
      TabOrder = 9
      Visible = False
      object Panel3: TPanel
        Left = 0
        Height = 20
        Top = 0
        Width = 298
        Align = alTop
        BevelOuter = bvNone
        ClientHeight = 20
        ClientWidth = 298
        Color = 13264128
        ParentColor = False
        TabOrder = 0
        object lblFileEdit2: TLabel
          Left = 10
          Height = 17
          Top = 0
          Width = 288
          Align = alTop
          BorderSpacing.Left = 10
          Caption = 'FloodFill'
          Font.CharSet = EASTEUROPE_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Quality = fqDraft
          Layout = tlCenter
          ParentColor = False
          ParentFont = False
        end
      end
      object btnFloodFill_Zatwierdz: TBCButton
        Left = 8
        Height = 33
        Top = 120
        Width = 96
        StateClicked.Background.Color = clBlack
        StateClicked.Background.ColorOpacity = 255
        StateClicked.Background.Gradient1.StartColor = 8404992
        StateClicked.Background.Gradient1.StartColorOpacity = 255
        StateClicked.Background.Gradient1.DrawMode = dmSet
        StateClicked.Background.Gradient1.EndColor = 4194304
        StateClicked.Background.Gradient1.EndColorOpacity = 255
        StateClicked.Background.Gradient1.ColorCorrection = True
        StateClicked.Background.Gradient1.GradientType = gtRadial
        StateClicked.Background.Gradient1.Point1XPercent = 50
        StateClicked.Background.Gradient1.Point1YPercent = 100
        StateClicked.Background.Gradient1.Point2XPercent = 0
        StateClicked.Background.Gradient1.Point2YPercent = 0
        StateClicked.Background.Gradient1.Sinus = False
        StateClicked.Background.Gradient2.StartColor = clWhite
        StateClicked.Background.Gradient2.StartColorOpacity = 255
        StateClicked.Background.Gradient2.DrawMode = dmSet
        StateClicked.Background.Gradient2.EndColor = clBlack
        StateClicked.Background.Gradient2.EndColorOpacity = 255
        StateClicked.Background.Gradient2.ColorCorrection = True
        StateClicked.Background.Gradient2.GradientType = gtLinear
        StateClicked.Background.Gradient2.Point1XPercent = 0
        StateClicked.Background.Gradient2.Point1YPercent = 0
        StateClicked.Background.Gradient2.Point2XPercent = 0
        StateClicked.Background.Gradient2.Point2YPercent = 100
        StateClicked.Background.Gradient2.Sinus = False
        StateClicked.Background.Gradient1EndPercent = 100
        StateClicked.Background.Style = bbsGradient
        StateClicked.Border.Color = clBlack
        StateClicked.Border.ColorOpacity = 255
        StateClicked.Border.LightColor = clWhite
        StateClicked.Border.LightOpacity = 255
        StateClicked.Border.LightWidth = 0
        StateClicked.Border.Style = bboNone
        StateClicked.Border.Width = 1
        StateClicked.FontEx.Color = 16770790
        StateClicked.FontEx.EndEllipsis = False
        StateClicked.FontEx.FontQuality = fqSystemClearType
        StateClicked.FontEx.Height = 0
        StateClicked.FontEx.SingleLine = True
        StateClicked.FontEx.Shadow = True
        StateClicked.FontEx.ShadowColor = clBlack
        StateClicked.FontEx.ShadowColorOpacity = 255
        StateClicked.FontEx.ShadowRadius = 2
        StateClicked.FontEx.ShadowOffsetX = 1
        StateClicked.FontEx.ShadowOffsetY = 1
        StateClicked.FontEx.Style = [fsBold]
        StateClicked.FontEx.TextAlignment = bcaCenter
        StateClicked.FontEx.WordBreak = False
        StateHover.Background.Color = clBlack
        StateHover.Background.ColorOpacity = 255
        StateHover.Background.Gradient1.StartColor = 16744448
        StateHover.Background.Gradient1.StartColorOpacity = 255
        StateHover.Background.Gradient1.DrawMode = dmSet
        StateHover.Background.Gradient1.EndColor = 8404992
        StateHover.Background.Gradient1.EndColorOpacity = 255
        StateHover.Background.Gradient1.ColorCorrection = True
        StateHover.Background.Gradient1.GradientType = gtRadial
        StateHover.Background.Gradient1.Point1XPercent = 50
        StateHover.Background.Gradient1.Point1YPercent = 100
        StateHover.Background.Gradient1.Point2XPercent = 0
        StateHover.Background.Gradient1.Point2YPercent = 0
        StateHover.Background.Gradient1.Sinus = False
        StateHover.Background.Gradient2.StartColor = clWhite
        StateHover.Background.Gradient2.StartColorOpacity = 255
        StateHover.Background.Gradient2.DrawMode = dmSet
        StateHover.Background.Gradient2.EndColor = clBlack
        StateHover.Background.Gradient2.EndColorOpacity = 255
        StateHover.Background.Gradient2.ColorCorrection = True
        StateHover.Background.Gradient2.GradientType = gtLinear
        StateHover.Background.Gradient2.Point1XPercent = 0
        StateHover.Background.Gradient2.Point1YPercent = 0
        StateHover.Background.Gradient2.Point2XPercent = 0
        StateHover.Background.Gradient2.Point2YPercent = 100
        StateHover.Background.Gradient2.Sinus = False
        StateHover.Background.Gradient1EndPercent = 100
        StateHover.Background.Style = bbsGradient
        StateHover.Border.Color = clBlack
        StateHover.Border.ColorOpacity = 255
        StateHover.Border.LightColor = clWhite
        StateHover.Border.LightOpacity = 255
        StateHover.Border.LightWidth = 0
        StateHover.Border.Style = bboNone
        StateHover.Border.Width = 1
        StateHover.FontEx.Color = clWhite
        StateHover.FontEx.EndEllipsis = False
        StateHover.FontEx.FontQuality = fqSystemClearType
        StateHover.FontEx.Height = 0
        StateHover.FontEx.SingleLine = True
        StateHover.FontEx.Shadow = True
        StateHover.FontEx.ShadowColor = clBlack
        StateHover.FontEx.ShadowColorOpacity = 255
        StateHover.FontEx.ShadowRadius = 2
        StateHover.FontEx.ShadowOffsetX = 1
        StateHover.FontEx.ShadowOffsetY = 1
        StateHover.FontEx.Style = [fsBold]
        StateHover.FontEx.TextAlignment = bcaCenter
        StateHover.FontEx.WordBreak = False
        StateNormal.Background.Color = clBlack
        StateNormal.Background.ColorOpacity = 255
        StateNormal.Background.Gradient1.StartColor = 4194304
        StateNormal.Background.Gradient1.StartColorOpacity = 255
        StateNormal.Background.Gradient1.DrawMode = dmSet
        StateNormal.Background.Gradient1.EndColor = 8405056
        StateNormal.Background.Gradient1.EndColorOpacity = 255
        StateNormal.Background.Gradient1.ColorCorrection = True
        StateNormal.Background.Gradient1.GradientType = gtLinear
        StateNormal.Background.Gradient1.Point1XPercent = 0
        StateNormal.Background.Gradient1.Point1YPercent = 0
        StateNormal.Background.Gradient1.Point2XPercent = 0
        StateNormal.Background.Gradient1.Point2YPercent = 100
        StateNormal.Background.Gradient1.Sinus = False
        StateNormal.Background.Gradient2.StartColor = 8405056
        StateNormal.Background.Gradient2.StartColorOpacity = 255
        StateNormal.Background.Gradient2.DrawMode = dmSet
        StateNormal.Background.Gradient2.EndColor = 4194304
        StateNormal.Background.Gradient2.EndColorOpacity = 255
        StateNormal.Background.Gradient2.ColorCorrection = True
        StateNormal.Background.Gradient2.GradientType = gtRadial
        StateNormal.Background.Gradient2.Point1XPercent = 50
        StateNormal.Background.Gradient2.Point1YPercent = 100
        StateNormal.Background.Gradient2.Point2XPercent = 0
        StateNormal.Background.Gradient2.Point2YPercent = 0
        StateNormal.Background.Gradient2.Sinus = False
        StateNormal.Background.Gradient1EndPercent = 60
        StateNormal.Background.Style = bbsGradient
        StateNormal.Border.Color = clBlack
        StateNormal.Border.ColorOpacity = 255
        StateNormal.Border.LightColor = clWhite
        StateNormal.Border.LightOpacity = 255
        StateNormal.Border.LightWidth = 0
        StateNormal.Border.Style = bboNone
        StateNormal.Border.Width = 1
        StateNormal.FontEx.Color = 16770790
        StateNormal.FontEx.EndEllipsis = False
        StateNormal.FontEx.FontQuality = fqSystemClearType
        StateNormal.FontEx.Height = 0
        StateNormal.FontEx.SingleLine = True
        StateNormal.FontEx.Shadow = True
        StateNormal.FontEx.ShadowColor = clBlack
        StateNormal.FontEx.ShadowColorOpacity = 255
        StateNormal.FontEx.ShadowRadius = 2
        StateNormal.FontEx.ShadowOffsetX = 1
        StateNormal.FontEx.ShadowOffsetY = 1
        StateNormal.FontEx.Style = [fsBold]
        StateNormal.FontEx.TextAlignment = bcaCenter
        StateNormal.FontEx.WordBreak = False
        Caption = 'Zatwierdź'
        Color = clNone
        DropDownWidth = 16
        DropDownArrowSize = 8
        GlobalOpacity = 255
        InnerMargin = 0
        OnClick = btnFloodFill_ZatwierdzClick
        ParentColor = False
        Rounding.RoundX = 12
        Rounding.RoundY = 12
        Rounding.RoundOptions = []
        RoundingDropDown.RoundX = 1
        RoundingDropDown.RoundY = 1
        RoundingDropDown.RoundOptions = []
        TextApplyGlobalOpacity = False
        MemoryUsage = bmuHigh
      end
      object btnFloodFill_Anuluj: TBCButton
        Left = 192
        Height = 33
        Top = 120
        Width = 96
        StateClicked.Background.Color = clBlack
        StateClicked.Background.ColorOpacity = 255
        StateClicked.Background.Gradient1.StartColor = 8404992
        StateClicked.Background.Gradient1.StartColorOpacity = 255
        StateClicked.Background.Gradient1.DrawMode = dmSet
        StateClicked.Background.Gradient1.EndColor = 4194304
        StateClicked.Background.Gradient1.EndColorOpacity = 255
        StateClicked.Background.Gradient1.ColorCorrection = True
        StateClicked.Background.Gradient1.GradientType = gtRadial
        StateClicked.Background.Gradient1.Point1XPercent = 50
        StateClicked.Background.Gradient1.Point1YPercent = 100
        StateClicked.Background.Gradient1.Point2XPercent = 0
        StateClicked.Background.Gradient1.Point2YPercent = 0
        StateClicked.Background.Gradient1.Sinus = False
        StateClicked.Background.Gradient2.StartColor = clWhite
        StateClicked.Background.Gradient2.StartColorOpacity = 255
        StateClicked.Background.Gradient2.DrawMode = dmSet
        StateClicked.Background.Gradient2.EndColor = clBlack
        StateClicked.Background.Gradient2.EndColorOpacity = 255
        StateClicked.Background.Gradient2.ColorCorrection = True
        StateClicked.Background.Gradient2.GradientType = gtLinear
        StateClicked.Background.Gradient2.Point1XPercent = 0
        StateClicked.Background.Gradient2.Point1YPercent = 0
        StateClicked.Background.Gradient2.Point2XPercent = 0
        StateClicked.Background.Gradient2.Point2YPercent = 100
        StateClicked.Background.Gradient2.Sinus = False
        StateClicked.Background.Gradient1EndPercent = 100
        StateClicked.Background.Style = bbsGradient
        StateClicked.Border.Color = clBlack
        StateClicked.Border.ColorOpacity = 255
        StateClicked.Border.LightColor = clWhite
        StateClicked.Border.LightOpacity = 255
        StateClicked.Border.LightWidth = 0
        StateClicked.Border.Style = bboNone
        StateClicked.Border.Width = 1
        StateClicked.FontEx.Color = 16770790
        StateClicked.FontEx.EndEllipsis = False
        StateClicked.FontEx.FontQuality = fqSystemClearType
        StateClicked.FontEx.Height = 0
        StateClicked.FontEx.SingleLine = True
        StateClicked.FontEx.Shadow = True
        StateClicked.FontEx.ShadowColor = clBlack
        StateClicked.FontEx.ShadowColorOpacity = 255
        StateClicked.FontEx.ShadowRadius = 2
        StateClicked.FontEx.ShadowOffsetX = 1
        StateClicked.FontEx.ShadowOffsetY = 1
        StateClicked.FontEx.Style = [fsBold]
        StateClicked.FontEx.TextAlignment = bcaCenter
        StateClicked.FontEx.WordBreak = False
        StateHover.Background.Color = clBlack
        StateHover.Background.ColorOpacity = 255
        StateHover.Background.Gradient1.StartColor = 16744448
        StateHover.Background.Gradient1.StartColorOpacity = 255
        StateHover.Background.Gradient1.DrawMode = dmSet
        StateHover.Background.Gradient1.EndColor = 8404992
        StateHover.Background.Gradient1.EndColorOpacity = 255
        StateHover.Background.Gradient1.ColorCorrection = True
        StateHover.Background.Gradient1.GradientType = gtRadial
        StateHover.Background.Gradient1.Point1XPercent = 50
        StateHover.Background.Gradient1.Point1YPercent = 100
        StateHover.Background.Gradient1.Point2XPercent = 0
        StateHover.Background.Gradient1.Point2YPercent = 0
        StateHover.Background.Gradient1.Sinus = False
        StateHover.Background.Gradient2.StartColor = clWhite
        StateHover.Background.Gradient2.StartColorOpacity = 255
        StateHover.Background.Gradient2.DrawMode = dmSet
        StateHover.Background.Gradient2.EndColor = clBlack
        StateHover.Background.Gradient2.EndColorOpacity = 255
        StateHover.Background.Gradient2.ColorCorrection = True
        StateHover.Background.Gradient2.GradientType = gtLinear
        StateHover.Background.Gradient2.Point1XPercent = 0
        StateHover.Background.Gradient2.Point1YPercent = 0
        StateHover.Background.Gradient2.Point2XPercent = 0
        StateHover.Background.Gradient2.Point2YPercent = 100
        StateHover.Background.Gradient2.Sinus = False
        StateHover.Background.Gradient1EndPercent = 100
        StateHover.Background.Style = bbsGradient
        StateHover.Border.Color = clBlack
        StateHover.Border.ColorOpacity = 255
        StateHover.Border.LightColor = clWhite
        StateHover.Border.LightOpacity = 255
        StateHover.Border.LightWidth = 0
        StateHover.Border.Style = bboNone
        StateHover.Border.Width = 1
        StateHover.FontEx.Color = clWhite
        StateHover.FontEx.EndEllipsis = False
        StateHover.FontEx.FontQuality = fqSystemClearType
        StateHover.FontEx.Height = 0
        StateHover.FontEx.SingleLine = True
        StateHover.FontEx.Shadow = True
        StateHover.FontEx.ShadowColor = clBlack
        StateHover.FontEx.ShadowColorOpacity = 255
        StateHover.FontEx.ShadowRadius = 2
        StateHover.FontEx.ShadowOffsetX = 1
        StateHover.FontEx.ShadowOffsetY = 1
        StateHover.FontEx.Style = [fsBold]
        StateHover.FontEx.TextAlignment = bcaCenter
        StateHover.FontEx.WordBreak = False
        StateNormal.Background.Color = clBlack
        StateNormal.Background.ColorOpacity = 255
        StateNormal.Background.Gradient1.StartColor = 4194304
        StateNormal.Background.Gradient1.StartColorOpacity = 255
        StateNormal.Background.Gradient1.DrawMode = dmSet
        StateNormal.Background.Gradient1.EndColor = 8405056
        StateNormal.Background.Gradient1.EndColorOpacity = 255
        StateNormal.Background.Gradient1.ColorCorrection = True
        StateNormal.Background.Gradient1.GradientType = gtLinear
        StateNormal.Background.Gradient1.Point1XPercent = 0
        StateNormal.Background.Gradient1.Point1YPercent = 0
        StateNormal.Background.Gradient1.Point2XPercent = 0
        StateNormal.Background.Gradient1.Point2YPercent = 100
        StateNormal.Background.Gradient1.Sinus = False
        StateNormal.Background.Gradient2.StartColor = 8405056
        StateNormal.Background.Gradient2.StartColorOpacity = 255
        StateNormal.Background.Gradient2.DrawMode = dmSet
        StateNormal.Background.Gradient2.EndColor = 4194304
        StateNormal.Background.Gradient2.EndColorOpacity = 255
        StateNormal.Background.Gradient2.ColorCorrection = True
        StateNormal.Background.Gradient2.GradientType = gtRadial
        StateNormal.Background.Gradient2.Point1XPercent = 50
        StateNormal.Background.Gradient2.Point1YPercent = 100
        StateNormal.Background.Gradient2.Point2XPercent = 0
        StateNormal.Background.Gradient2.Point2YPercent = 0
        StateNormal.Background.Gradient2.Sinus = False
        StateNormal.Background.Gradient1EndPercent = 60
        StateNormal.Background.Style = bbsGradient
        StateNormal.Border.Color = clBlack
        StateNormal.Border.ColorOpacity = 255
        StateNormal.Border.LightColor = clWhite
        StateNormal.Border.LightOpacity = 255
        StateNormal.Border.LightWidth = 0
        StateNormal.Border.Style = bboNone
        StateNormal.Border.Width = 1
        StateNormal.FontEx.Color = 16770790
        StateNormal.FontEx.EndEllipsis = False
        StateNormal.FontEx.FontQuality = fqSystemClearType
        StateNormal.FontEx.Height = 0
        StateNormal.FontEx.SingleLine = True
        StateNormal.FontEx.Shadow = True
        StateNormal.FontEx.ShadowColor = clBlack
        StateNormal.FontEx.ShadowColorOpacity = 255
        StateNormal.FontEx.ShadowRadius = 2
        StateNormal.FontEx.ShadowOffsetX = 1
        StateNormal.FontEx.ShadowOffsetY = 1
        StateNormal.FontEx.Style = [fsBold]
        StateNormal.FontEx.TextAlignment = bcaCenter
        StateNormal.FontEx.WordBreak = False
        Caption = 'Anuluj'
        Color = clNone
        DropDownWidth = 16
        DropDownArrowSize = 8
        GlobalOpacity = 255
        InnerMargin = 0
        OnClick = btnFloodFill_AnulujClick
        ParentColor = False
        Rounding.RoundX = 12
        Rounding.RoundY = 12
        Rounding.RoundOptions = []
        RoundingDropDown.RoundX = 1
        RoundingDropDown.RoundY = 1
        RoundingDropDown.RoundOptions = []
        TextApplyGlobalOpacity = False
        MemoryUsage = bmuHigh
      end
      object ColorButton1: TColorButton
        Left = 40
        Height = 25
        Top = 24
        Width = 40
        BorderWidth = 1
        ButtonColorSize = 16
        ButtonColor = 15987699
        OnColorChanged = TrackBar1Change
      end
      object Label1: TLabel
        Left = 8
        Height = 15
        Top = 29
        Width = 31
        Caption = 'Kolor:'
        ParentColor = False
      end
      object TrackBar1: TTrackBar
        Left = 82
        Height = 25
        Top = 24
        Width = 214
        Max = 100
        Min = 10
        OnChange = TrackBar1Change
        Position = 15
        ShowSelRange = False
        TabOrder = 1
      end
      object Label2: TLabel
        Left = 8
        Height = 15
        Top = 56
        Width = 47
        Caption = 'Kontrast:'
        ParentColor = False
      end
      object TrackBar2: TTrackBar
        Left = 64
        Height = 25
        Top = 48
        Width = 232
        Frequency = 5
        Max = 100
        Min = -100
        OnChange = TrackBar1Change
        Position = 0
        ShowSelRange = False
        Enabled = False
        TabOrder = 2
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 400
    object miClear: TMenuItem
      Caption = 'Clear'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000606BCD60A10
        D6E10408CFE10509D0E10508CFE10409CFE10408CEE10407CDE10306CCE10305
        CBE10205CAE10303CAE10202C7E10502C5E10200C7E10200B6D61820D4FF2C4A
        F2FF1930EEFF1C31EEFF172DEEFF1629EEFF1328EDFF1223EDFF101FEDFF0F1B
        ECFF0D16ECFF0C12ECFF0B0EEBFF0A0BEAFF0A07ECFF0301CDFF4A53F2F24674
        FFFF2148FFFF2A50FFFF294BFFFF2646FFFF2341FFFF203DFFFF1D38FFFF1B35
        FFFF182DFFFF1628FFFF1421FFFF121CFFFF1118FFFF0705EBF27173F7F381A0
        FFFF4668FFFF3256FFFF2649FFFF2445FFFF2140FFFF1D3BFFFF1A36FFFF1732
        FFFF142EFFFF122AFFFF0F25FFFF0D1DFFFF0E1EFFFF0002F1F3696DFDF28EB0
        FFFF7493FFFF7594FFFF6989FFFF5578FFFF476BFFFF3F60FFFF3252FFFF2E4D
        FFFF2B49FFFF2944FFFF2541FFFF223AFFFF223CFFFF141BFDF27176FFFFA6C4
        FFFF91ACFFFF94B1FFFF96AFFFFF95B0FFFF94B0FFFF93B0FFFF93ACFFFF90AA
        FFFF8EA6FFFF8CA4FFFF8A9FFFFF869CFFFF88A6FFFF6168FFFF524CFFD66C6E
        FFE16765FFE16766FFE16766FFE16766FFE16766FFE16565FFE16564FFE16664
        FFE16464FFE16465FFE16562FFE16462FFE16868FFE1504BFFD6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000
      }
      OnClick = miClearClick
    end
    object miClearAll: TMenuItem
      Caption = 'Clear all'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000000000000000
        0000000000000000000000142905075D752929778A472274874E01222C240100
        00160100000B0100000200000000000000000000000000000000000000000000
        000001000002107B973833A3BDAD30ADC5E74AC1D7FA44B8D0FB257E94AA0000
        01410100002C010000190100000B0100000200000000000000000000000034A8
        C71823A3C2A545B9D3F240C4DAFF38CDE0FF1EBED7FF28C2DAFF45B8CEF40B3D
        4B850100005A01000049010000320100001901000004000000000F9DC04F33B1
        CFD44ED1E2FE19BAD4FF27BDD6FF37C9DFFE1EC8E1FE10BDD7FF35C3DAFE2982
        98C10100006B010000670100005C010000410100001A010000032DAFCCCB5CCD
        E1FD32C5DAFF1CC3DAFF14BAD5FF26BFDBFF2CD4EDFF14C9E3FF19CADFFF2CA7
        BFEC020B0E710100006B0100006B0100005B0100002C0100000C189AC12B57BF
        D79F5BCCDFF72FC4DAFF0EBFD7FF18C5DEFF26CFEBFF30D9F1FF20D6EFFF39BA
        D3F609232B700100006101000061010000530100002B0100000B000000000055
        94044BB3CF7356C7DCED22C3D9FF11C9E2FF30D6F0FF49DAF2FF39EBFDFF50EA
        F0F80E4E5F670100003C0100003A0100002E0100001501000005000000000000
        0000000A640140AECB5241BFD5E623CBE2FF2FE5FCFF66F8FDFF6CF3F2FE4095
        C1FE01067AD8000048360100000E0100000A0100000400000000000000000000
        000000000000000000002CA3C2373DBED7D04AE9F0FC58B3D3FF4540BFFE0707
        AFFF041D9AFE0A73A78900E4E006000000000000000000000000000000000000
        00000000000000000000000000001DB4C5171A4F92B7120AA4FF3428C3FF4D8E
        CCFF4EE9E9FF1CD2DFE10091BB38000000000000000000000000000000000000
        000000000000000000000000000000000000000046200E338ACA88E6E8FE78EB
        EEFF279CC1FB076FA0840082AB03000000000000000000000000000000000000
        000000000000000000000000000000000000000000000EB2C96038CCDFCA0B67
        9DDE0761A5FF1B6DA4E51959872B000000000000000000000000000000000000
        00000000000000000000000000000000000000000000007DB104005A94071055
        8C641E7DBAFA1B87C9FF347CABC11858870F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001855
        84163080B2DD1C82C3FF3986B8FA347EAF3A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002C71A3844488B5F94D8CB1FA2A77AA480000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000105D920C206EA16416659B8113649C0E0000000000000000
      }
      OnClick = miClearAllClick
    end
    object miLoadSzablon: TMenuItem
      Caption = 'Load foto...'
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000064000000640000000000000000000000FFFFFF0063B6
        F84D64B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5F77864B5
        F77864B5F77864B5F77864B5F77864B5F77863B6F84DFFFFFF00FFFFFF0063B4
        F7C363B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B4F7C3FFFFFF00FFFFFF0063B5
        F7EA63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF86C5F4FFA2D1F2FFA2D1
        F2FFA2D1F2FFA2D1F2FF8EC8F3FF63B5F7FF63B5F7EAFFFFFF0063B8F11263B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCDE0E4FFC3D8
        DCFFC3D8DCFFC9DDE1FFB5DAF0FF63B5F7FF63B5F7FF63B8F11262B3F63963B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FFA6D3F1FFCCDFE3FFC6DB
        DFFFD1E3E6FFD6E7EAFFB5DAF0FF63B5F7FF63B5F7FF62B3F63962B5F76063B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF97CCF3FFC0DFEFFFC0DF
        EFFFC0DFEFFFC0DFEFFFA3D1F2FF63B5F7FF63B5F7FF62B5F76062B5F78763B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF62B5F78763B5F8AF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F8AF63B5F7D663B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5
        F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7FF63B5F7D664B5F7A163B0
        EEC477BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA77BB
        F2DA77BBF2DA77BBF2DA77BBF2DA77BBF2DA64B0EEC564B5F7A1FFFFFF00648E
        B9E9DBE4ECFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5EBFFDCE5
        EBFFDCE5EBFFDCE5EBFFDCE5EBFFDBE4ECFF6891BAEAFFFFFF00FFFFFF005B88
        B5E8A7BACBFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6CEFFBBC6
        CEFFBBC6CEFFBBC6CEFFBBC6CEFFA9BCCCFF5B88B5E8FFFFFF00FFFFFF005B88
        B5E87195B9FF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3BCFF87A3
        BCFF87A3BCFF87A3BCFF87A3BCFF7296B9FF5B88B5E8FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88
        B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5FF5B88B5E6FFFFFF00FFFFFF005B88
        B5E85B88B5FF5B88B5FF5B88B5FF5C87B5D15889B11A608AB518608AB518608A
        B518608AB518608AB518608AB518608AB518558EB812FFFFFF00FFFFFF005A87
        B4665B88B5785B88B5785B88B5785988B82BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      }
      OnClick = miLoadSzablonClick
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Options = [ofFileMustExist, ofEnableSizing, ofViewDetail]
    Left = 24
    Top = 256
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.jpg'
    Filter = 'Graphic (*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.pbm;*.pgm;*.ppm;*.gif;*.dds;*.hdr;*.o3tc;*.tga;*.tga;*.tga;*.bma)|*.png;*.xpm;*.bmp;*.cur;*.ico;*.icns;*.jpeg;*.jpg;*.jpe;*.jfif;*.tif;*.tiff;*.gif;*.pbm;*.pgm;*.ppm;*.gif;*.dds;*.hdr;*.o3tc;*.tga;*.tga;*.tga;*.bma|Portable Network Graphic (*.png)|*.png|Pixmap (*.xpm)|*.xpm|Bitmaps (*.bmp)|*.bmp|Cursor (*.cur)|*.cur|Icon (*.ico)|*.ico|Mac OS X Icon (*.icns)|*.icns|Joint Picture Expert Group (*.jpeg;*.jpg;*.jpe;*.jfif)|*.jpeg;*.jpg;*.jpe;*.jfif|Tagged Image File Format (*.tif;*.tiff)|*.tif;*.tiff|Graphics Interchange Format (*.gif)|*.gif|Portable PixMap (*.pbm;*.pgm;*.ppm)|*.pbm;*.pgm;*.ppm|Animated GIF (*.gif)|*.gif|Microsoft DirectDraw Surface (*.dds)|*.dds|High Dynamic Range Image (*.hdr)|*.hdr|oZone3D Texture Compression (*.o3tc)|*.o3tc|Targa (*.tga)|*.tga|Targa (*.tga)|*.tga|TGA Image File (*.tga)|*.tga|KControls alpha bitmap (*.bma)|*.bma|Wszystkie pliki (*.*)|*.*|'
    Left = 24
    Top = 328
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    Options = []
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    DataType = dtDataSet
    Left = 24
    Top = 473
  end
  object frDesigner1: TfrDesigner
    Left = 24
    Top = 540
  end
end
