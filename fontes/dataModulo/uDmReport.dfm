object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object sqlListar: TFDQuery
    Active = True
    Connection = Conexao.Conexao
    SQL.Strings = (
      'select '
      #9'e.id_empregado as codigo_empregado,'
      #9'e.nm_empregado as nome_empregado,'
      #9'e.nm_funcao as funcao,'
      #9'e.salario as salario,'
      #9'e.comissao as comissao,'
      #9'd.id_departamento as codigo_departamento,'
      #9'd.nm_departamento as nome_departamento,'
      #9'd.local as local'
      'from empregados e'
      
        'inner join departamentos d on(d.id_departamento = e.cod_departam' +
        'ento);'
      '')
    Left = 24
    Top = 16
  end
  object DSReport: TDataSource
    DataSet = sqlListar
    Left = 88
    Top = 16
  end
end
