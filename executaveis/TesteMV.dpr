program TesteMV;

uses
  Vcl.Forms,
  view_frmPrincipal in '..\fontes\view\view_frmPrincipal.pas' {Form1},
  DmConexao in '..\fontes\dataModulo\DmConexao.pas' {Conexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TConexao, Conexao);
  Application.Run;
end.
