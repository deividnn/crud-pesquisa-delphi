unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TDataModule1 = class(TDataModule)
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
  DataModule1: TDataModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDataModule1.clientdatasetAfterDelete(DataSet: TDataSet);
begin
  DataModule1.clientdataset.ApplyUpdates(0);
  DataModule1.clientdataset.Refresh;
end;

procedure TDataModule1.clientdatasetAfterPost(DataSet: TDataSet);
begin
  DataModule1.clientdataset.ApplyUpdates(0);
  DataModule1.clientdataset.Refresh;
end;

end.
