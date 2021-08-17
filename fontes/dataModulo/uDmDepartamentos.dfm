object DmDepartamentos: TDmDepartamentos
  OldCreateOrder = False
  Height = 126
  Width = 232
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'insert into departamentos(nm_departamento, local)'
      'values(:nm_departamento, :local);')
    Left = 64
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
end
