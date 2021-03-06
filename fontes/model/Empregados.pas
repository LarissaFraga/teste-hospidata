unit Empregados;

interface

type
  TEmpregados = class
  private
    FcodigoEmpregado: Integer;
    FcodigoDepartamento: Integer;
    FcodigoSuperior: Integer;
    FnomeEmpregado: String;
    FnomeFuncao: String;
    FdataAdmissao: TDate;
    Fsalario: Double;
    Fcomissao: Double;

    procedure setCodigoEmpregado(const Value: Integer);
    procedure setCodigoDepartamento(const Value: Integer);
    procedure setCodigoSuperior(const Value: Integer);
    procedure setNomeEmpregado(const Value: String);
    procedure setNomeFuncao(const Value: String);
    procedure setDataAdmissao(const Value: TDate);
    procedure setSalario(const Value: Double);
    procedure setComissao(const Value: Double);

  public
    property codigoEmpregado: Integer read FcodigoEmpregado
      write setCodigoEmpregado;
    property codigoDepartamento: Integer read FcodigoDepartamento
      write setCodigoDepartamento;
    property codigoSuperior: Integer read FcodigoSuperior
      write setCodigoSuperior;
    property nomeEmpregado: String read FnomeEmpregado
      write setNomeEmpregado;
    property nomeFuncao: String read FnomeFuncao write setNomeFuncao;
    property dataAdmissao: TDate read FdataAdmissao write setDataAdmissao;
    property salario: Double read Fsalario write setSalario;
    property comissao: Double read Fcomissao write setComissao;
  end;
implementation

procedure TEmpregados.setCodigoEmpregado(const Value: Integer);
begin
  FcodigoEmpregado := Value;
end;

procedure TEmpregados.setCodigoDepartamento(const Value: Integer);
begin
  FcodigoDepartamento := Value;
end;

procedure TEmpregados.setCodigoSuperior(const Value: Integer);
begin
  FcodigoSuperior := Value;
end;

procedure TEmpregados.setNomeEmpregado(const Value: String);
begin
  FnomeEmpregado := Value;
end;

procedure TEmpregados.setNomeFuncao(const Value: String);
begin
  FnomeFuncao := Value;
end;

procedure TEmpregados.setDataAdmissao(const Value: TDate);
begin
  FdataAdmissao := Value;
end;

procedure TEmpregados.setSalario(const Value: Double);
begin
  Fsalario := Value;
end;

procedure TEmpregados.setComissao(const Value: Double);
begin
  Fcomissao := Value;
end;

end.
