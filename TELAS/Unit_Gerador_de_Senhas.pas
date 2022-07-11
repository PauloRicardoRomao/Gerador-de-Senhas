unit Unit_Gerador_de_Senhas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PanelFundo: TPanel;
    ButtonGerarSenha: TButton;
    EditQtdCarac: TEdit;
    ComboBoxTipoCarac: TComboBox;
    LabelQtd: TLabel;
    LabelTipo: TLabel;
    MemoSenhas: TMemo;
    LabelSenhas: TLabel;
    PanelMEMO: TPanel;
    ButtonLimpar: TButton;
    procedure ButtonLimparClick(Sender: TObject);
    procedure ButtonGerarSenhaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function GERARSENHAS(PLen, TIPO : Integer): string;
var
  S : STRING;
begin

  if TIPO = 0 then
  begin
    S := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890/?!@#$%&*-+\';
  end;

  if TIPO = 1 then
  begin
    S := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
  end;

  if TIPO = 2 then
  begin
    S := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
  end;

  if TIPO = 3 then
  begin
    S := '1234567890';
  end;

  Randomize;

  Result := '';
  Repeat
    Result := Result + S[ Random(Length(S)) +1 ];
  Until (Length(Result) = PLen)

end;

procedure TForm1.ButtonGerarSenhaClick(Sender: TObject);
begin
  if EditQtdCarac.Text = '' then
  begin
    Application.MessageBox('Necess�rio inserir um valor no campo "QUANTIDADE".','ATEN��O',+MB_OK);
    EditQtdCarac.SetFocus;
    Exit;
  end;

  if EditQtdCarac.Text <> '' then
  begin
    MemoSenhas.Lines.Add(GERARSENHAS(StrToInt(EditQtdCarac.Text),ComboBoxTipoCarac.ItemIndex));
  end;

end;

procedure TForm1.ButtonLimparClick(Sender: TObject);
begin
  MemoSenhas.Lines.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  EditQtdCarac.Clear;
  ComboBoxTipoCarac.ItemIndex := 0;
  MemoSenhas.Lines.Clear;
end;

end.
