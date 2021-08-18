unit view_FrmEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, uDmEmpregados, uEmpregadosController;

type
  TCadastroEmpregados = class(TForm)
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
    procedure btnLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroEmpregados: TCadastroEmpregados;
  EmpregadoController: TEmpregadosController;

implementation

{$R *.dfm}

procedure TCadastroEmpregados.btnCadastrarClick(Sender: TObject);
var

begin
  EmpregadoController := uEmpregadosController.TEmpregadosController.Create;
  EmpregadoController.Cadastrar(StrToInt(editCodDepartamento.Text),StrToInt(editCodigoSuperior.Text),
    editNome.Text, editFuncao.Text,StrToDate(maskEditDataEmissao.Text),StrToFloat(maskEditSalario.Text),
    StrToFloat(maskEditSalario.Text));
  ShowMessage('Cadastro concluído');
end;

procedure TCadastroEmpregados.btnLimparClick(Sender: TObject);
begin
  editCodDepartamento.Clear;
  editNome.Clear;
  editCodigoSuperior.Clear;
  editFuncao.Clear;
  maskEditDataEmissao.Clear;
  maskEditComissao.Clear;
  maskEditSalario.Clear;
end;

procedure TCadastroEmpregados.FormCreate(Sender: TObject);
begin
  maskEditDataEmissao.Text := formatdatetime('yyyy-mm-dd', now);
end;

end.