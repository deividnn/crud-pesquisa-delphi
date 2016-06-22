unit uEdita;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList, ACBrBase, ACBrEnterTab;

type
  Tedita = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    descricao: TDBEdit;
    idade: TDBEdit;
    salvar: TButton;
    cancelar: TButton;
    ds: TDataSource;
    acoes: TActionList;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    enterTab: TACBrEnterTab;
    procedure FormShow(Sender: TObject);

    procedure DatasetPost1Execute(Sender: TObject);
    procedure cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  edita: Tedita;

implementation

{$R *.dfm}

uses Unit1, Unit4;

procedure Tedita.cancelarClick(Sender: TObject);
begin
  ds.DataSet.Cancel;
  self.Close;
end;

procedure Tedita.DatasetPost1Execute(Sender: TObject);
begin
  ds.DataSet.Refresh;
  self.Close;
end;

procedure Tedita.FormShow(Sender: TObject);
begin
  // ds.dataset:=form4.datasoruce.dataset;
  // ds.DataSet.edit;

end;

end.
