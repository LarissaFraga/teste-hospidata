object DmDepartamentos: TDmDepartamentos
  OldCreateOrder = False
  Height = 128
  Width = 269
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'insert into departamentos(nm_departamento, local)'
      'values(:nm_departamento, :local);')
    Left = 16
    Top = 32
    ParamData = <
      item
        Name = 'NM_DEPARTAMENTO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOCAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlListar: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      'select id_departamento as Codigo,'
      'nm_departamento as Nome,'
      'local as Local'
      'from departamentos;')
    Left = 80
    Top = 32
  end
  object DSDepartamentos: TDataSource
    DataSet = sqlListar
    Left = 160
    Top = 32
  end
end
