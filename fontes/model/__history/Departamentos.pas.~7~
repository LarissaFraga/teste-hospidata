unit Departamentos;

interface

type
  TDepartamentos = class
  private
    FcodigoDepartamento: Integer;
    FnomeDepartamento: String;
    FlocalDepartamento: String;

    procedure setCodigoDepartamento(const Value: Integer);
    procedure setNomeDepartamento(const Value: String);
    procedure setLocalDepartamento(const Value: String);

  public
    property codigoDepartamento: Integer read FcodigoDepartamento
      write setCodigoDepartamento;
    property nomeDepartamento: String read FnomeDepartamento
      write setNomeDepartamento;
    property localDepartamento: String read FlocalDepartamento
      write setLocalDepartamento;
  end;
implementation

procedure TDepartamentos.setCodigoDepartamento(const Value: Integer);
begin
  FcodigoDepartamento := Value;
end;

procedure TDepartamentos.setNomeDepartamento(const Value: String);
begin
  FnomeDepartamento := Value;
end;

procedure TDepartamentos.setLocalDepartamento(const Value: String);
begin
  FlocalDepartamento := Value;
end;

end.
