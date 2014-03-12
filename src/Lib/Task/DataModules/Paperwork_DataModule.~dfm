object Paperwork_DM: TPaperwork_DM
  OldCreateOrder = False
  Left = 434
  Top = 300
  Height = 338
  Width = 223
  object paperwork_connection: TZConnection
    Protocol = 'mysql'
    HostName = '192.168.10.1'
    Port = 3306
    Database = 'paperwork'
    User = 'documents_user'
    AutoCommit = True
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = False
    SQLHourGlass = False
    Left = 48
    Top = 129
  end
  object work_query: TZQuery
    Connection = paperwork_connection
    RequestLive = False
    CachedUpdates = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [utUnmodified, utModified, utInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 126
    Top = 192
  end
end
