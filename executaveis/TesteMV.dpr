program TesteMV;

uses
  Vcl.Forms,
  view_frmPrincipal in '..\fontes\view\view_frmPrincipal.pas' {MenuPrincipal},
  uDmConexao in '..\fontes\dataModulo\uDmConexao.pas' {Conexao: TDataModule},
  view_frmDepartamentos in '..\fontes\view\view_frmDepartamentos.pas' {CadastroDepartamentos},
  view_FrmEmpregados in '..\fontes\view\view_FrmEmpregados.pas' {CadastroEmpregados},
  Departamentos in '..\fontes\model\Departamentos.pas',
  Empregados in '..\fontes\model\Empregados.pas',
  uEmpregadosController in '..\fontes\controller\uEmpregadosController.pas',
  uDepartamentosController in '..\fontes\controller\uDepartamentosController.pas',
  uDmEmpregados in '..\fontes\dataModulo\uDmEmpregados.pas' {DmEmpregados: TDataModule},
  uDmDepartamento in '..\fontes\dataModulo\uDmDepartamento.pas' {DmDepartamento: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenuPrincipal, MenuPrincipal);
  Application.CreateForm(TConexao, Conexao);
  Application.CreateForm(TCadastroDepartamentos, CadastroDepartamentos);
  Application.CreateForm(TCadastroEmpregados, CadastroEmpregados);
  Application.CreateForm(TDmEmpregados, DmEmpregados);
  Application.CreateForm(TDmDepartamento, DmDepartamento);
  Application.Run;
end.
