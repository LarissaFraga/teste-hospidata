object CadastroDepartamentos: TCadastroDepartamentos
  Left = 0
  Top = 0
  Caption = 'CadastroDepartamentos'
  ClientHeight = 352
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object labelDepartamento: TLabel
    Left = 32
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object labelLocal: TLabel
    Left = 32
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Local:'
  end
  object edtNome: TEdit
    Left = 80
    Top = 37
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object edtLocal: TEdit
    Left = 80
    Top = 77
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object DBGDepartamentos: TDBGrid
    Left = 0
    Top = 120
    Width = 675
    Height = 153
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Local'
        Visible = True
      end>
  end
  object btnVoltar: TButton
    Left = 593
    Top = 294
    Width = 75
    Height = 50
    Caption = 'Voltar'
    TabOrder = 3
  end
  object btnLimpar: TButton
    Left = 504
    Top = 294
    Width = 75
    Height = 50
    Caption = 'Limpar'
    TabOrder = 4
  end
  object btnCadastrar: TButton
    Left = 414
    Top = 294
    Width = 75
    Height = 50
    Caption = 'Cadastrar'
    TabOrder = 5
  end
end
