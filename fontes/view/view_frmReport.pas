unit view_frmReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, PrintDAT;

type
  TRelatorio = class(TForm)
    DBReport: TDBGrid;
    btnImprimir: TButton;
    PdtReport: TPdtPrintDAT;
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Relatorio: TRelatorio;

implementation

{$R *.dfm}

uses uDmReport;

procedure TRelatorio.btnImprimirClick(Sender: TObject);
begin
  PdtReport.Print;
end;

end.
