unit view_frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Vcl.StdCtrls, PrintDAT;

type
  TMenuPrincipal = class(TForm)
    btnEmpregados: TButton;
    btnDepartamentos: TButton;
    procedure btnDepartamentosClick(Sender: TObject);
    procedure btnEmpregadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuPrincipal: TMenuPrincipal;

implementation

{$R *.dfm}

uses view_frmDepartamentos, view_FrmEmpregados;

procedure TMenuPrincipal.btnDepartamentosClick(Sender: TObject);
begin
  CadastroDepartamentos := TCadastroDepartamentos.Create(Application);
  CadastroDepartamentos.Show;
end;

procedure TMenuPrincipal.btnEmpregadosClick(Sender: TObject);
begin
  CadastroEmpregados := TCadastroEmpregados.Create(Application);
  CadastroEmpregados.Show;
end;

end.
