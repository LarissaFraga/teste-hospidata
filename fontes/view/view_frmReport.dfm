object Relatorio: TRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 289
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBReport: TDBGrid
    Left = 0
    Top = 24
    Width = 625
    Height = 201
    DataSource = DataModule1.DSReport
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnImprimir: TButton
    Left = 526
    Top = 231
    Width = 75
    Height = 50
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = btnImprimirClick
  end
  object PdtReport: TPdtPrintDAT
    ObjectToPrint = DBReport
    ReportId = '(522.773)'
    Version = '1.81.00 LITE'
    Left = 328
    Top = 240
  end
end