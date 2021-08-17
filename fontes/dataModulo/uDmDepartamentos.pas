unit uDmDepartamentos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDmDepartamentos = class(TDataModule)
    sqlInserir: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDepartamentos: TDmDepartamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmConexao;

{$R *.dfm}

end.
