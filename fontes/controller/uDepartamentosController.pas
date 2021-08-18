unit uDepartamentosController;

interface

uses Departamentos;

type
  TDepartamentosController = class

  public
    function Cadastrar (Nome, Local: String): Boolean;
  end;
implementation

uses uDmDepartamento;

var
  Departamento: TDepartamentos;

function TDepartamentosController.Cadastrar(Nome, Local: String): Boolean;
begin
  try
    Departamento := TDepartamentos.Create;
    Departamento.nomeDepartamento := Nome;
    Departamento.localDepartamento := Local;
    uDmDepartamento.DmDepartamento.sqlInserir.ParamByName('NM_DEPARTAMENTO').AsString := Departamento.localDepartamento;
    uDmDepartamento.DmDepartamento.sqlInserir.ParamByName('LOCAL').AsString := Departamento.localDepartamento;
    uDmDepartamento.DmDepartamento.sqlInserir.ExecSQL;
  finally
    Departamento := nil;
    uDmDepartamento.DmDepartamento := nil;
  end;
end;

end.
