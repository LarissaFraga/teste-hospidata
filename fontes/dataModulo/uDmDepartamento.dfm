object DmDepartamento: TDmDepartamento
  OldCreateOrder = False
  Height = 125
  Width = 294
  object sqlInserir: TFDQuery
    CachedUpdates = True
    Connection = Conexao.Conexao
    ResourceOptions.AssignedValues = [rvPersistent, rvBackup]
    ResourceOptions.Persistent = True
    ResourceOptions.Backup = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
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
    CachedUpdates = True
    Connection = Conexao.Conexao
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.UpdateMode = upWhereChanged
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select id_departamento as Codigo,'
      'nm_departamento as Nome,'
      'local as Local'
      'from departamentos;')
    Left = 80
    Top = 32
  end
  object DSDepartamentos: TDataSource
    AutoEdit = False
    DataSet = sqlListar
    Left = 160
    Top = 32
  end
end
