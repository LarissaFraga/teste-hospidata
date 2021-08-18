unit uEmpregadosController;

interface

type
  TEmpregadosController = class

  public
    function Cadastrar (CodDepartamento, CodSuperior: Integer; NomeEmpregado,
      Funcao: String; DataAdmissao: TDate; Salario, Comissao: Double): Boolean;
  end;
implementation

uses uDmEmpregados, Empregados;

var
  Empregado: TEmpregados;

function TEmpregadosController.Cadastrar(CodDepartamento, CodSuperior: Integer;
      NomeEmpregado, Funcao: String; DataAdmissao: TDate; Salario,
      Comissao: Double): Boolean;
begin
  try
    Empregado := TEmpregados.Create;
    Empregado.codigoDepartamento := CodDepartamento;
    Empregado.codigoSuperior := CodSuperior;
    Empregado.nomeEmpregado := NomeEmpregado;
    Empregado.nomeFuncao := Funcao;
    Empregado.dataAdmissao := DataAdmissao;
    Empregado.salario := Salario;
    Empregado.comissao := Comissao;

    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('COD_DEPARTAMENTO').AsInteger := Empregado.codigoDepartamento;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('COD_EMP_FUNCAO').AsInteger := Empregado.codigoSuperior;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('NM_EMPREGADO').AsString := Empregado.nomeEmpregado;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('NM_FUNCAO').AsString := Empregado.nomeFuncao;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('DATA_ADMISSAO').AsDate := Empregado.dataAdmissao;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('SALARIO').AsFloat := Empregado.salario;
    uDmEmpregados.DmEmpregados.sqlInserir.ParamByName('COMISSAO').AsFloat := Empregado.comissao;
    uDmEmpregados.DmEmpregados.sqlInserir.ExecSQL;
  finally
    Empregado := nil;
  end;
end;

end.
