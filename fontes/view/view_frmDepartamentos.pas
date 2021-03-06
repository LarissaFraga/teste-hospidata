unit view_frmDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, uDepartamentosController, uDmDepartamento, Departamentos,
  PrintDAT;

type
  TCadastroDepartamentos = class(TForm)
    labelDepartamento: TLabel;
    labelLocal: TLabel;
    edtNome: TEdit;
    edtLocal: TEdit;
    DBGDepartamentos: TDBGrid;
    btnLimpar: TButton;
    btnCadastrar: TButton;
    btnImprimir: TButton;
    PdtReportDepartamentos: TPdtPrintDAT;
    procedure btnLimparClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDepartamentos: TCadastroDepartamentos;
  DepartamentoController: TDepartamentosController;

implementation

{$R *.dfm}

procedure TCadastroDepartamentos.btnCadastrarClick(Sender: TObject);
begin
  DepartamentoController := uDepartamentosController.TDepartamentosController.Create;
  DepartamentoController.Cadastrar(edtNome.Text, edtLocal.Text);
  ShowMessage('Cadastro conclu?do');
end;

procedure TCadastroDepartamentos.btnImprimirClick(Sender: TObject);
begin
  PdtReportDepartamentos.Print;
end;

procedure TCadastroDepartamentos.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtLocal.Clear;
end;

end.
