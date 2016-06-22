unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    SpeedButton1: TSpeedButton;
    grid: TDBGrid;
    SpeedButton2: TSpeedButton;
    datasoruce: TDataSource;
    colunas: TComboBox;
    campo: TEdit;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm4.FormCreate(Sender: TObject);
var
  i: integer;
begin
  datasoruce.DataSet.Open;
  for i := 0 to DataModule1.clientdataset.FieldCount - 1 do
  begin
    colunas.Items.Add(datasoruce.DataSet.Fields[i].FieldName);
  end;
  colunas.ItemIndex := 1;

end;

procedure TForm4.gridDblClick(Sender: TObject);
begin

  try
    form2 := TForm2.Create(nil);
    form2.ds := datasoruce;
    form2.ds.Edit;
    form2.ShowModal;
  finally
    form2.Free;
  end;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  DataModule1.DataSeta.Close;
  DataModule1.DataSeta.CommandText := 'select * from cliente where ' +
    colunas.Items[colunas.ItemIndex] + ' like  "%' + campo.Text + '%" order by '
    + colunas.Items[colunas.ItemIndex] + ' asc';
  DataModule1.provider.DataSet := DataModule1.DataSeta;
  DataModule1.clientdataset.Close;
  DataModule1.clientdataset.ProviderName := DataModule1.provider.Name;
  datasoruce.DataSet := DataModule1.clientdataset;
  datasoruce.DataSet.Open;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin

  try
    form2 := TForm2.Create(nil);
    form2.ds := datasoruce;
    form2.ds.DataSet.Insert;
    form2.ShowModal;
  finally
    form2.Free;
  end;

end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
  if not(datasoruce.DataSet.IsEmpty) then
    datasoruce.DataSet.Delete;
end;

end.
