object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 404
  Width = 511
  object conexao: TSQLConnection
    ConnectionName = 'delphi'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver230.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=23.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver230.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=23.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=delphi'
      'User_Name=deivid'
      'Password=6291'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 40
    Top = 16
  end
  object dataseta: TSQLDataSet
    CommandText = 'select * from cliente order by `id` desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 128
    Top = 16
    object datasetaid: TIntegerField
      FieldName = 'id'
    end
    object datasetadescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object datasetaidade: TIntegerField
      FieldName = 'idade'
    end
  end
  object provider: TDataSetProvider
    DataSet = dataseta
    Left = 216
    Top = 16
  end
  object clientdataset: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provider'
    AfterPost = clientdatasetAfterPost
    AfterDelete = clientdatasetAfterDelete
    Left = 312
    Top = 16
    object clientdatasetid: TIntegerField
      FieldName = 'id'
    end
    object clientdatasetdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object clientdatasetidade: TIntegerField
      FieldName = 'idade'
    end
  end
end
