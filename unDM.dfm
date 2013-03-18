object DM: TDM
  OldCreateOrder = False
  Left = 206
  Top = 100
  Height = 409
  Width = 623
  object Database: TDatabase
    DatabaseName = 'DBSkLad'
    DriverName = 'STANDARD'
    LoginPrompt = False
    Params.Strings = (
      'PATH=data'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Default'
    AfterConnect = DatabaseAfterConnect
    AfterDisconnect = DatabaseAfterDisconnect
    Left = 64
    Top = 8
  end
  object tblClients: TTable
    DatabaseName = 'DBSkLad'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'Name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Phone'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'address'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'Comment'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <
      item
        Name = 'tblClientsIndex1'
        Fields = 'id'
        Options = [ixPrimary]
      end>
    StoreDefs = True
    TableName = 'Clients'
    Left = 8
    Top = 56
  end
  object tblRashod: TTable
    DatabaseName = 'DBSkLad'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'thedate'
        DataType = ftDate
      end
      item
        Name = 'client_id'
        DataType = ftInteger
      end
      item
        Name = 'mk'
        DataType = ftInteger
      end
      item
        Name = 'mp'
        DataType = ftInteger
      end
      item
        Name = 'prostoe'
        DataType = ftInteger
      end
      item
        Name = 'bugel'
        DataType = ftInteger
      end
      item
        Name = 'bugelA'
        DataType = ftInteger
      end
      item
        Name = 'bugelC'
        DataType = ftInteger
      end
      item
        Name = 'vkl'
        DataType = ftInteger
      end
      item
        Name = 'gel'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'tblRashodIndex1'
        Fields = 'id'
        Options = [ixPrimary]
      end
      item
        Name = 'indxClient_id'
        Fields = 'client_id'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Rashod'
    Left = 8
    Top = 104
  end
  object tblCosts: TTable
    DatabaseName = 'DBSkLad'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'client_id'
        DataType = ftInteger
      end
      item
        Name = 'mk'
        DataType = ftFloat
      end
      item
        Name = 'mp'
        DataType = ftFloat
      end
      item
        Name = 'prostoe'
        DataType = ftFloat
      end
      item
        Name = 'bugel'
        DataType = ftFloat
      end
      item
        Name = 'bugelA'
        DataType = ftFloat
      end
      item
        Name = 'bugelC'
        DataType = ftFloat
      end
      item
        Name = 'vkl'
        DataType = ftFloat
      end
      item
        Name = 'gel'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tblCostsIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'indxClient_id'
        Fields = 'client_id'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Costs'
    Left = 8
    Top = 152
  end
  object tblAccounts: TTable
    DatabaseName = 'DBSkLad'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'client_id'
        DataType = ftInteger
      end
      item
        Name = 'onaccount'
        DataType = ftFloat
      end
      item
        Name = 'lastDate'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'tblAccountsIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'indxClient_id'
        Fields = 'client_id'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'Accounts'
    Left = 8
    Top = 200
  end
  object qClients: TQuery
    CachedUpdates = True
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * from Clients')
    UpdateObject = usClients
    Left = 96
    Top = 56
    object qClientsid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'DBSKLAD."Clients.DB".id'
    end
    object qClientsName: TStringField
      DisplayLabel = #1060#1048#1054
      DisplayWidth = 25
      FieldName = 'Name'
      Origin = 'DBSKLAD."Clients.DB".Name'
      Size = 40
    end
    object qClientsPhone: TStringField
      DisplayLabel = #1058#1077#1083#1077#1092#1086#1085
      DisplayWidth = 10
      FieldName = 'Phone'
      Origin = 'DBSKLAD."Clients.DB".Phone'
      Size = 30
    end
    object qClientsaddress: TStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 15
      FieldName = 'address'
      Origin = 'DBSKLAD."Clients.DB".address'
      Size = 35
    end
    object qClientsComment: TStringField
      DisplayLabel = #1050#1086#1084#1077#1085#1090#1088#1080#1081
      DisplayWidth = 15
      FieldName = 'Comment'
      Origin = 'DBSKLAD."Clients.DB".Comment'
      Size = 35
    end
  end
  object qRashod: TQuery
    CachedUpdates = True
    BeforePost = qRashodBeforePost
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * from rashod'
      'order by thedate')
    UpdateObject = usRashod
    Left = 96
    Top = 104
    object qRashodid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'DBSKLAD."rashod.DB".id'
    end
    object qRashodthedate: TDateField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'thedate'
      Origin = 'DBSKLAD."rashod.DB".thedate'
    end
    object qRashodluc: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'luc'
      LookupDataSet = qClients
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'client_id'
      Size = 35
      Lookup = True
    end
    object qRashodclient_id: TIntegerField
      FieldName = 'client_id'
      Origin = 'DBSKLAD."rashod.DB".client_id'
      Visible = False
    end
    object qRashodmk: TIntegerField
      DisplayLabel = #1052'/'#1082
      DisplayWidth = 5
      FieldName = 'mk'
      Origin = 'DBSKLAD."rashod.DB".mk'
    end
    object qRashodmp: TIntegerField
      DisplayLabel = #1052'/'#1087
      DisplayWidth = 5
      FieldName = 'mp'
      Origin = 'DBSKLAD."rashod.DB".mp'
    end
    object qRashodprostoe: TIntegerField
      DisplayLabel = #1055#1088#1086#1089#1090#1086#1077
      DisplayWidth = 5
      FieldName = 'prostoe'
      Origin = 'DBSKLAD."rashod.DB".prostoe'
    end
    object qRashodbugel: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100
      DisplayWidth = 5
      FieldName = 'bugel'
      Origin = 'DBSKLAD."rashod.DB".bugel'
    end
    object qRashodbugelA: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' '#1040
      FieldName = 'bugelA'
      Origin = 'DBSKLAD."rashod.DB".bugelA'
    end
    object qRashodbugelC: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' C'
      DisplayWidth = 5
      FieldName = 'bugelC'
      Origin = 'DBSKLAD."rashod.DB".bugelC'
    end
    object qRashodvkl: TIntegerField
      DisplayLabel = #1042#1082#1083
      DisplayWidth = 5
      FieldName = 'vkl'
      Origin = 'DBSKLAD."rashod.DB".vkl'
    end
    object qRashodgel: TIntegerField
      DisplayLabel = #1046#1077#1083
      DisplayWidth = 5
      FieldName = 'gel'
      Origin = 'DBSKLAD."rashod.DB".gel'
    end
  end
  object qCosts: TQuery
    CachedUpdates = True
    BeforePost = qCostsBeforePost
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * from costs')
    UpdateObject = usCosts
    Left = 96
    Top = 152
    object qCostsid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'DBSKLAD."costs.DB".id'
    end
    object qCostsclient_id: TIntegerField
      FieldName = 'client_id'
      Origin = 'DBSKLAD."costs.DB".client_id'
      Visible = False
    end
    object qCostsluc: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'luc'
      LookupDataSet = qClients
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'client_id'
      Size = 35
      Lookup = True
    end
    object qCostsmk: TFloatField
      DisplayLabel = #1052'/'#1082
      DisplayWidth = 5
      FieldName = 'mk'
      Origin = 'DBSKLAD."costs.DB".mk'
    end
    object qCostsmp: TFloatField
      DisplayLabel = #1052'/'#1087
      DisplayWidth = 5
      FieldName = 'mp'
      Origin = 'DBSKLAD."costs.DB".mp'
    end
    object qCostsprostoe: TFloatField
      DisplayLabel = #1055#1088#1086#1089#1090#1086#1077
      DisplayWidth = 5
      FieldName = 'prostoe'
      Origin = 'DBSKLAD."costs.DB".prostoe'
    end
    object qCostsbugel: TFloatField
      DisplayLabel = #1041#1102#1075#1077#1083#1100
      DisplayWidth = 5
      FieldName = 'bugel'
      Origin = 'DBSKLAD."costs.DB".bugel'
    end
    object qCostsbugelA: TFloatField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' A'
      DisplayWidth = 5
      FieldName = 'bugelA'
      Origin = 'DBSKLAD."Costs.DB".bugelA'
    end
    object qCostsbugelC: TFloatField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' C'
      DisplayWidth = 5
      FieldName = 'bugelC'
      Origin = 'DBSKLAD."Costs.DB".bugelC'
    end
    object qCostsvkl: TFloatField
      DisplayLabel = #1042#1082#1083
      DisplayWidth = 5
      FieldName = 'vkl'
      Origin = 'DBSKLAD."costs.DB".vkl'
    end
    object qCostsgel: TFloatField
      DisplayLabel = #1046#1077#1083
      DisplayWidth = 5
      FieldName = 'gel'
      Origin = 'DBSKLAD."costs.DB".gel'
    end
  end
  object qAccounts: TQuery
    CachedUpdates = True
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * from accounts')
    UpdateObject = usAccounts
    Left = 96
    Top = 200
    object qAccountsid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'DBSKLAD."accounts.DB".id'
    end
    object qAccountsluc: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'luc'
      LookupDataSet = qClients
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'client_id'
      Size = 35
      Lookup = True
    end
    object qAccountsclient_id: TIntegerField
      FieldName = 'client_id'
      Origin = 'DBSKLAD."accounts.DB".client_id'
      Visible = False
    end
    object qAccountsonaccount: TFloatField
      DisplayLabel = #1053#1072' '#1089#1095#1077#1090#1091
      FieldName = 'onaccount'
      Origin = 'DBSKLAD."accounts.DB".onaccount'
    end
    object qAccountslastDate: TDateField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1087#1086#1087#1086#1083#1085#1077#1085#1080#1103
      FieldName = 'lastDate'
      Origin = 'DBSKLAD."accounts.DB".lastDate'
    end
  end
  object dsqClients: TDataSource
    DataSet = qClients
    Left = 176
    Top = 56
  end
  object dsqRashod: TDataSource
    DataSet = qRashod
    Left = 176
    Top = 104
  end
  object dsqCosts: TDataSource
    DataSet = qCosts
    Left = 176
    Top = 152
  end
  object dsqAccounts: TDataSource
    DataSet = qAccounts
    Left = 176
    Top = 200
  end
  object usClients: TUpdateSQL
    ModifySQL.Strings = (
      'update Clients'
      'set'
      '  Name = :Name,'
      '  Phone = :Phone,'
      '  address = :address,'
      '  Comment = :Comment'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into Clients'
      '  (Name, Phone, address, Comment)'
      'values'
      '  (:Name, :Phone, :address, :Comment)')
    DeleteSQL.Strings = (
      'delete from Clients'
      'where'
      '  id = :OLD_id')
    Left = 248
    Top = 56
  end
  object usRashod: TUpdateSQL
    ModifySQL.Strings = (
      'update rashod'
      'set'
      '  thedate = :thedate,'
      '  client_id = :client_id,'
      '  mk = :mk,'
      '  mp = :mp,'
      '  prostoe = :prostoe,'
      '  bugel = :bugel,'
      '  bugelA = :bugelA,'
      '  bugelC = :bugelC,'
      '  vkl = :vkl,'
      '  gel = :gel'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into rashod'
      
        '  (thedate, client_id, mk, mp, prostoe, bugel, bugelA, bugelC, v' +
        'kl, gel)'
      'values'
      
        '  (:thedate, :client_id, :mk, :mp, :prostoe, :bugel, :bugelA, :b' +
        'ugelC, '
      '   :vkl, :gel)')
    DeleteSQL.Strings = (
      'delete from rashod'
      'where'
      '  id = :OLD_id')
    Left = 248
    Top = 104
  end
  object usCosts: TUpdateSQL
    ModifySQL.Strings = (
      'update costs'
      'set'
      '  client_id = :client_id,'
      '  mk = :mk,'
      '  mp = :mp,'
      '  prostoe = :prostoe,'
      '  bugel = :bugel,'
      '  bugelA = :bugelA,'
      '  bugelC = :bugelC,'
      '  vkl = :vkl,'
      '  gel = :gel'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into costs'
      '  (client_id, mk, mp, prostoe, bugel, bugelA, bugelC, vkl, gel)'
      'values'
      
        '  (:client_id, :mk, :mp, :prostoe, :bugel, :bugelA, :bugelC, :vk' +
        'l, :gel)')
    DeleteSQL.Strings = (
      'delete from costs'
      'where'
      '  id = :OLD_id')
    Left = 248
    Top = 152
  end
  object usAccounts: TUpdateSQL
    ModifySQL.Strings = (
      'update accounts'
      'set'
      '  client_id = :client_id,'
      '  onaccount = :onaccount,'
      '  lastDate = :lastDate'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into accounts'
      '  (client_id, onaccount, lastDate)'
      'values'
      '  (:client_id, :onaccount, :lastDate)')
    DeleteSQL.Strings = (
      'delete from accounts'
      'where'
      '  id = :OLD_id')
    Left = 248
    Top = 200
  end
  object qAccount_by_client: TQuery
    CachedUpdates = True
    DatabaseName = 'DBSkLad'
    DataSource = dsqClients
    SQL.Strings = (
      'select * from accounts'
      'where client_id=:id')
    UpdateObject = usa_by_c
    Left = 96
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object dsqAccount_by_client: TDataSource
    DataSet = qAccount_by_client
    Left = 208
    Top = 256
  end
  object usa_by_c: TUpdateSQL
    ModifySQL.Strings = (
      'update accounts'
      'set'
      '  client_id = :client_id,'
      '  onaccount = :onaccount,'
      '  lastDate = :lastDate'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into accounts'
      '  (client_id, onaccount, lastDate)'
      'values'
      '  (:client_id, :onaccount, :lastDate)')
    DeleteSQL.Strings = (
      'delete from accounts'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 256
  end
  object qinsertAccount: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'insert into accounts(client_id,onaccount,lastdate)'
      'values (:client_id,:onaccount,:lastdate)')
    Left = 96
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'client_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'onaccount'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        ParamType = ptUnknown
      end>
  end
  object qUpdateAccount: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'update accounts'
      'set onaccount=:onaccount,'
      '     lastdate=:lastdate'
      'where client_id=:client_id')
    Left = 184
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'onaccount'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lastdate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'client_id'
        ParamType = ptUnknown
      end>
  end
  object qRashod_by_Client: TQuery
    CachedUpdates = True
    BeforePost = qRashod_by_ClientBeforePost
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * from rashod'
      'where client_id=:id'
      'order by thedate')
    UpdateObject = usr_b_c
    Left = 296
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Size = 4
      end>
    object qRashod_by_Clientid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'DBSKLAD."rashod.DB".id'
    end
    object qRashod_by_Clientthedate: TDateField
      DisplayLabel = #1044#1072#1090#1072
      DisplayWidth = 10
      FieldName = 'thedate'
      Origin = 'DBSKLAD."rashod.DB".thedate'
    end
    object qRashod_by_Clientluc: TStringField
      DisplayLabel = #1050#1083#1080#1077#1085#1090
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'luc'
      LookupDataSet = qClients
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'client_id'
      Size = 35
      Lookup = True
    end
    object qRashod_by_Clientclient_id: TIntegerField
      FieldName = 'client_id'
      Origin = 'DBSKLAD."rashod.DB".client_id'
      Visible = False
    end
    object qRashod_by_Clientmk: TIntegerField
      DisplayLabel = #1052'/'#1082
      DisplayWidth = 5
      FieldName = 'mk'
      Origin = 'DBSKLAD."rashod.DB".mk'
    end
    object qRashod_by_Clientmp: TIntegerField
      DisplayLabel = #1052'/'#1087
      DisplayWidth = 5
      FieldName = 'mp'
      Origin = 'DBSKLAD."rashod.DB".mp'
    end
    object qRashod_by_Clientprostoe: TIntegerField
      DisplayLabel = #1055#1088#1086#1089#1090#1086#1077
      DisplayWidth = 5
      FieldName = 'prostoe'
      Origin = 'DBSKLAD."rashod.DB".prostoe'
    end
    object qRashod_by_Clientbugel: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100
      DisplayWidth = 5
      FieldName = 'bugel'
      Origin = 'DBSKLAD."rashod.DB".bugel'
    end
    object qRashod_by_ClientbugelA: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' '#1040
      DisplayWidth = 5
      FieldName = 'bugelA'
      Origin = 'DBSKLAD."rashod.DB".bugelA'
    end
    object qRashod_by_ClientbugelC: TIntegerField
      DisplayLabel = #1041#1102#1075#1077#1083#1100' '#1057
      DisplayWidth = 5
      FieldName = 'bugelC'
      Origin = 'DBSKLAD."rashod.DB".bugelC'
    end
    object qRashod_by_Clientvkl: TIntegerField
      DisplayLabel = #1042#1082#1083
      DisplayWidth = 5
      FieldName = 'vkl'
      Origin = 'DBSKLAD."rashod.DB".vkl'
    end
    object qRashod_by_Clientgel: TIntegerField
      DisplayLabel = #1046#1077#1083
      DisplayWidth = 5
      FieldName = 'gel'
      Origin = 'DBSKLAD."rashod.DB".gel'
    end
  end
  object usr_b_c: TUpdateSQL
    ModifySQL.Strings = (
      'update rashod'
      'set'
      '  thedate = :thedate,'
      '  client_id = :client_id,'
      '  mk = :mk,'
      '  mp = :mp,'
      '  prostoe = :prostoe,'
      '  bugel = :bugel,'
      '  bugelA = :bugelA,'
      '  bugelC = :bugelC,'
      '  vkl = :vkl,'
      '  gel = :gel'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into rashod'
      
        '  (thedate, client_id, mk, mp, prostoe, bugel, bugelA, bugelC, v' +
        'kl, gel)'
      'values'
      
        '  (:thedate, :client_id, :mk, :mp, :prostoe, :bugel, :bugelA, :b' +
        'ugelC, '
      '   :vkl, :gel)')
    DeleteSQL.Strings = (
      'delete from rashod'
      'where'
      '  id = :OLD_id')
    Left = 480
    Top = 312
  end
  object dsqRashod_by_client: TDataSource
    DataSet = qRashod_by_Client
    Left = 392
    Top = 320
  end
  object qREsultRashod: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select name,(sum(r.mk)*co.mk),'
      '        (sum(r.mp)*co.mp),'
      '        (sum(r.prostoe)*co.prostoe),'
      '        (sum(r.bugel)*co.bugel),'
      '        (sum(r.vkl)*co.vkl),'
      '        (sum(r.gel)*co.gel),'
      '(sum(r.mk)*co.mk)+'
      '        (sum(r.mp)*co.mp)+'
      '        (sum(r.prostoe)*co.prostoe)+'
      '        (sum(r.bugel)*co.bugel)+'
      '        (sum(r.vkl)*co.vkl)+'
      '        (sum(r.gel)*co.gel)'
      'from rashod r, '
      '     clients cl left join costs co on cl.id=co.client_id'
      'where (cl.id=r.client_id)'
      'group by name')
    Left = 488
    Top = 232
  end
  object tblRashod_costs: TTable
    DatabaseName = 'DBSkLad'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'TheDate'
        DataType = ftDate
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'mk'
        DataType = ftInteger
      end
      item
        Name = 'mkc'
        DataType = ftFloat
      end
      item
        Name = 'mp'
        DataType = ftInteger
      end
      item
        Name = 'mpc'
        DataType = ftFloat
      end
      item
        Name = 'prostoe'
        DataType = ftInteger
      end
      item
        Name = 'prostoec'
        DataType = ftFloat
      end
      item
        Name = 'bugel'
        DataType = ftInteger
      end
      item
        Name = 'bugelc'
        DataType = ftFloat
      end
      item
        Name = 'bugelA'
        DataType = ftInteger
      end
      item
        Name = 'bugelCA'
        DataType = ftFloat
      end
      item
        Name = 'bugelCC'
        DataType = ftInteger
      end
      item
        Name = 'bugelcCC'
        DataType = ftFloat
      end
      item
        Name = 'vkl'
        DataType = ftInteger
      end
      item
        Name = 'vklc'
        DataType = ftFloat
      end
      item
        Name = 'gel'
        DataType = ftInteger
      end
      item
        Name = 'gelc'
        DataType = ftFloat
      end
      item
        Name = 'sumint'
        DataType = ftInteger
      end
      item
        Name = 'sumfloat'
        DataType = ftFloat
      end
      item
        Name = 'NowDate'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'Rashod_costs'
    Left = 384
    Top = 48
  end
  object qinsert_rashod_costs: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'insert into rashod_costs('
      'thedate,name,mk,mkc,mp,mpc,prostoe,prostoec,'
      'bugel,bugelc,bugelA,bugelcA,bugelCC,bugelCCC,'
      ''
      'vkl,vklc,gel,gelc,sumint,sumfloat,nowdate)'
      'values(:thedate,:name,:mk,:mkc,:mp,:mpc,:prostoe,:prostoec'
      
        ',:bugel,:bugelc,:bugelA,:bugelcA,:bugelCC,:bugelCCC,:vkl,:vklc,:' +
        'gel,:gelc,:sumint,:sumfloat'
      ',:nowdate)')
    Left = 488
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'thedate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mkc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mpc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prostoe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prostoec'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelcA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelCCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vkl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vklc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gelc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumint'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sumfloat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nowdate'
        ParamType = ptUnknown
      end>
  end
  object qCosts_by_client: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * '
      'from costs'
      'where client_id=:id')
    Left = 488
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qCosts_by_client_is_null: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select * '
      'from costs'
      'where client_id is null')
    Left = 488
    Top = 176
  end
  object qDeleteRashod_costs: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'delete from rashod_costs')
    Left = 416
  end
  object qDelRashod_by_cl: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'delete from rashod'
      'where client_id=:id')
    Left = 384
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qDelCosts_by_cl: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'delete from costs'
      'where client_id=:id')
    Left = 384
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qDelaccount_by_cl: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'delete from accounts'
      'where client_id=:id')
    Left = 384
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qsummint: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select sum(mk) as smk,'
      '       sum(mp) as smp,'
      '       sum(prostoe)as sprostoe,'
      '       sum(bugel) as sbugel,'
      '       sum(bugelA) as sbugelA,'
      '       sum(bugelC) as sbugelC,'
      ''
      '       sum(vkl) as svkl,'
      '       sum(gel) as sgel,'
      '        sum(mk+'
      '        mp+'
      '        prostoe+'
      '        bugel+'
      '        bugelA+'
      '        bugelC+'
      ''
      '        vkl+'
      '        gel) as sm'
      'from rashod'
      'where client_id=:id')
    Left = 304
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qSummFloat: TQuery
    DatabaseName = 'DBSkLad'
    SQL.Strings = (
      'select sum(r.mk)*:mk as smkc,'
      '       sum(r.mp)*:mp as smpc,'
      '       sum(r.prostoe)*:prostoe as sprostoec,'
      '       sum(r.bugel)*:bugel as sbugelc,'
      '       sum(r.bugelA)*:bugelA as sbugelcA,'
      '       sum(r.bugelC)*:bugelC as sbugelcC,'
      ''
      '       sum(r.vkl)*:vkl as svklc,'
      '       sum(r.gel)*:gel as sgelc,'
      '        (sum(r.mk)*:mk)+'
      '        (sum(r.mp)*:mp)+'
      '        (sum(r.prostoe)*:prostoe)+'
      '        (sum(r.bugel)*:bugel)+'
      '        (sum(r.bugelA)*:bugelA)+'
      '        (sum(r.bugelC)*:bugelC)+'
      '        (sum(r.vkl)*:vkl)+'
      '        (sum(r.gel)*:gel) as sfloat'
      'from rashod r, '
      '     clients cl left join costs co on cl.id=co.client_id'
      'where (cl.id=r.client_id)'
      'and cl.id=:id')
    Left = 304
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prostoe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vkl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mk'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prostoe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bugelC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vkl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object q: TQuery
    DatabaseName = 'DBSkLad'
    Left = 544
    Top = 304
  end
end
