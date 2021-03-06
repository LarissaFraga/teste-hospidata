unit uDmDepartamento;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient;

type
  TDmDepartamento = class(TDataModule)
    sqlInserir: TFDQuery;
    sqlListar: TFDQuery;
    DSDepartamentos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDepartamento: TDmDepartamento;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConexao;

{$R *.dfm}

end.
