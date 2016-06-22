unit uDm;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  Tdm = class(TDataModule)
    conexao: TSQLConnection;
    dataseta: TSQLDataSet;
    Provider: TDataSetProvider;
    clientdataset: TClientDataSet;
    clientdatasetid: TIntegerField;
    clientdatasetdescricao: TStringField;
    clientdatasetidade: TIntegerField;
    datasetaid: TIntegerField;
    datasetadescricao: TStringField;
    datasetaidade: TIntegerField;
    procedure clientdatasetAfterPost(DataSet: TDataSet);
    procedure clientdatasetAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure Tdm.clientdatasetAfterDelete(DataSet: TDataSet);
begin
  dm.clientdataset.ApplyUpdates(0);
  dm.clientdataset.Refresh;
end;

procedure Tdm.clientdatasetAfterPost(DataSet: TDataSet);
begin
  dm.clientdataset.ApplyUpdates(0);
  dm.clientdataset.Refresh;
end;

end.
