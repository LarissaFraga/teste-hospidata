object MenuPrincipal: TMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'MenuPrincipal'
  ClientHeight = 170
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnEmpregados: TButton
    Left = 264
    Top = 56
    Width = 137
    Height = 73
    Caption = 'Cadastrar Empregados'
    TabOrder = 0
    OnClick = btnEmpregadosClick
  end
  object btnDepartamentos: TButton
    Left = 48
    Top = 56
    Width = 137
    Height = 73
    Caption = 'Cadastrar Departamentos'
    TabOrder = 1
    OnClick = btnDepartamentosClick
  end
end
