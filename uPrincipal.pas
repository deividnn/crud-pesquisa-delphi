unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    pesquisar: TSpeedButton;
    grid: TDBGrid;
    novo: TSpeedButton;
    datasoruce: TDataSource;
    colunas: TComboBox;
    campo: TEdit;
    excluir: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure pesquisarClick(Sender: TObject);
    procedure novoClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure excluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses uDm, uEdita;

procedure TForm4.FormCreate(Sender: TObject);
var
  i: integer;
begin
  datasoruce.DataSet.Open;
  for i := 0 to dm.clientdataset.FieldCount - 1 do
  begin
    colunas.Items.Add(datasoruce.DataSet.Fields[i].FieldName);
  end;
  colunas.ItemIndex := 1;

end;

procedure TForm4.gridDblClick(Sender: TObject);
begin

  try
    edita := Tedita.Create(nil);
    edita.ds := datasoruce;
    edita.ds.Edit;
    edita.ShowModal;
  finally
    edita.Free;
  end;
end;

procedure TForm4.pesquisarClick(Sender: TObject);
begin
  dm.DataSeta.Close;
  dm.DataSeta.CommandText := 'select * from cliente where ' + colunas.Items
    [colunas.ItemIndex] + ' like  "%' + campo.Text + '%" order by ' +
    colunas.Items[colunas.ItemIndex] + ' asc';
  dm.provider.DataSet := dm.DataSeta;
  dm.clientdataset.Close;
  dm.clientdataset.ProviderName := dm.provider.Name;
  datasoruce.DataSet := dm.clientdataset;
  datasoruce.DataSet.Open;
end;

procedure TForm4.novoClick(Sender: TObject);
begin

  try
    edita := Tedita.Create(nil);
    edita.ds := datasoruce;
    edita.ds.DataSet.Insert;
    edita.ShowModal;
  finally
    edita.Free;
  end;

end;

procedure TForm4.excluirClick(Sender: TObject);
begin
  if not(datasoruce.DataSet.IsEmpty) then
    datasoruce.DataSet.Delete;
end;

end.
