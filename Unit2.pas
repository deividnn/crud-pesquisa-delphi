unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    ds: TDataSource;
    acoes: TActionList;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    procedure FormShow(Sender: TObject);

    procedure DatasetPost1Execute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit4;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ds.DataSet.Cancel;
  self.Close;
end;

procedure TForm2.DatasetPost1Execute(Sender: TObject);
begin
  ds.DataSet.Refresh;
  self.Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  // ds.dataset:=form4.datasoruce.dataset;
  // ds.DataSet.edit;

end;

end.
