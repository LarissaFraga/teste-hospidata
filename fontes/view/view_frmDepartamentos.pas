unit view_frmDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TCadastroDepartamentos = class(TForm)
    labelDepartamento: TLabel;
    labelLocal: TLabel;
    edtNome: TEdit;
    edtLocal: TEdit;
    DBGDepartamentos: TDBGrid;
    btnVoltar: TButton;
    btnLimpar: TButton;
    btnCadastrar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDepartamentos: TCadastroDepartamentos;

implementation

{$R *.dfm}

end.