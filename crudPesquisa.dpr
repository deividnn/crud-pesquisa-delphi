program crudPesquisa;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form4},
  uDm in 'uDm.pas' {dm: TDataModule},
  uEdita in 'uEdita.pas' {edita};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

