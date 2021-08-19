object CadastroEmpregados: TCadastroEmpregados
  Left = 0
  Top = 0
  Caption = 'CadastroEmpregados'
  ClientHeight = 386
  ClientWidth = 683
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object labelCodDepartamento: TLabel
    Left = 24
    Top = 24
    Width = 109
    Height = 13
    Caption = 'C'#243'digo Departamento:'
  end
  object labelCodigoSuperior: TLabel
    Left = 303
    Top = 24
    Width = 95
    Height = 13
    Caption = 'C'#243'digo do Superior:'
  end
  object labelNome: TLabel
    Left = 24
    Top = 51
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object labelFuncao: TLabel
    Left = 303
    Top = 51
    Width = 111
    Height = 13
    Caption = 'Fun'#231#227'o do Empregado:'
  end
  object labelDataAdmissao: TLabel
    Left = 24
    Top = 78
    Width = 89
    Height = 13
    Caption = 'Data de admiss'#227'o:'
  end
  object labelSalario: TLabel
    Left = 305
    Top = 78
    Width = 36
    Height = 13
    Caption = 'Sal'#225'rio:'
  end
  object labelComissao: TLabel
    Left = 24
    Top = 105
    Width = 49
    Height = 13
    Caption = 'Comiss'#227'o:'
  end
  object btnLimpar: TButton
    Left = 600
    Top = 328
    Width = 75
    Height = 50
    Caption = 'Limpar'
    TabOrder = 0
    OnClick = btnLimparClick
  end
  object btnCadastrar: TButton
    Left = 510
    Top = 328
    Width = 75
    Height = 50
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = btnCadastrarClick
  end
  object DBGEmpregados: TDBGrid
    Left = 0
    Top = 153
    Width = 685
    Height = 153
    DataSource = DmEmpregados.DSEmpregados
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'codigo'
        Width = 125
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'codigo_departamento'
        Width = 125
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'codigo_superior'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_empregado'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_funcao'
        Width = 125
        Visible = True
      end>
  end
  object editCodDepartamento: TEdit
    Left = 139
    Top = 21
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object editCodigoSuperior: TEdit
    Left = 420
    Top = 21
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object editNome: TEdit
    Left = 139
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object editFuncao: TEdit
    Left = 420
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object maskEditDataEmissao: TMaskEdit
    Left = 139
    Top = 75
    Width = 117
    Height = 21
    Hint = 'aaaa-mm-dd'
    EditMask = '!0000-00-00;1;_'
    MaxLength = 10
    TabOrder = 7
    Text = '    -  -  '
  end
  object maskEditComissao: TMaskEdit
    Left = 139
    Top = 102
    Width = 118
    Height = 21
    Hint = 'aaaa-mm-dd'
    EditMask = '9999,99;1;_'
    MaxLength = 7
    TabOrder = 8
    Text = '    ,  '
  end
  object maskEditSalario: TMaskEdit
    Left = 420
    Top = 75
    Width = 118
    Height = 21
    Hint = 'aaaa-mm-dd'
    EditMask = '9999,99;1;_'
    MaxLength = 7
    TabOrder = 9
    Text = '    ,  '
  end
  object btnImprimir: TButton
    Left = 414
    Top = 328
    Width = 75
    Height = 50
    Caption = 'Imprimir'
    TabOrder = 10
    OnClick = btnImprimirClick
  end
  object PdtReportEmpregados: TPdtPrintDAT
    ObjectToPrint = DBGEmpregados
    ReportId = '(522.773)'
    Version = '1.81.00 LITE'
    Left = 280
    Top = 336
  end
end
