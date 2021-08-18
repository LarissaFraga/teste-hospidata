object DmEmpregados: TDmEmpregados
  OldCreateOrder = False
  Height = 129
  Width = 267
  object sqlInserir: TFDQuery
    Connection = Conexao.Conexao
    SQL.Strings = (
      'insert into empregados(cod_departamento, '
      'cod_emp_funcao, nm_empregado, nm_funcao,'
      'data_admissao, salario, comissao)'
      'values(:cod_departamento, :cod_emp_funcao,'
      ':nm_empregado, :nm_funcao, :data_admissao,'
      ':salario, :comissao);')
    Left = 40
    Top = 32
    ParamData = <
      item
        Name = 'COD_DEPARTAMENTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COD_EMP_FUNCAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NM_EMPREGADO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NM_FUNCAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_ADMISSAO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SALARIO'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'COMISSAO'
        DataType = ftFloat
        ParamType = ptInput
        Value = Null
      end>
  end
  object sqlListar: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      'select id_empregado as Codigo,'
      'cod_departamento as Codigo_Departamento,'
      'cod_emp_funcao as Codigo_Superior,'
      'nm_empregado as Nome_Empregado,'
      'nm_funcao as Nome_Funcao'
      'from empregados')
    Left = 112
    Top = 32
  end
  object DSEmpregados: TDataSource
    DataSet = sqlListar
    Left = 184
    Top = 32
  end
end
