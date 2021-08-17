unit view_FrmEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroEmpregados = class(TForm)
    btnVoltar: TButton;
    btnLimpar: TButton;
    btnCadastrar: TButton;
    DBGEmpregados: TDBGrid;
    labelCodDepartamento: TLabel;
    editCodDepartamento: TEdit;
    labelCodigoSuperior: TLabel;
    editCodigoSuperior: TEdit;
    labelNome: TLabel;
    editNome: TEdit;
    labelFuncao: TLabel;
    editFuncao: TEdit;
    labelDataAdmissao: TLabel;
    labelSalario: TLabel;
    labelComissao: TLabel;
    maskEditDataEmissao: TMaskEdit;
    maskEditComissao: TMaskEdit;
    maskEditSalario: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroEmpregados: TCadastroEmpregados;

implementation

{$R *.dfm}

end.
