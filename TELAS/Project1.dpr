program Project1;

uses
  Vcl.Forms,
  Unit_Gerador_de_Senhas in 'Unit_Gerador_de_Senhas.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Purple');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
