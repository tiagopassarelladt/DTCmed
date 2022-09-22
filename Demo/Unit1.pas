unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DTCmed, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    DTCmed1: TDTCmed;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
        Memo1.Lines.Clear;
        DTCmed1.PathArqCMED := 'c:\temp\';
        DTCmed1.ObterTabelaCMED;

        for i := 0 to pred( DTCmed1.RetornoCMED.Count ) do
        begin
              Memo1.Lines.Add( 'Ean: '                + DTCmed1.RetornoCMED[i].Ean );
              Memo1.Lines.Add( 'Reg M.S: '            + DTCmed1.RetornoCMED[i].RegistroMS );
              Memo1.Lines.Add( 'Produto: '            + DTCmed1.RetornoCMED[i].Produto );
              Memo1.Lines.Add( 'Laboratorio: '        + DTCmed1.RetornoCMED[i].Laboratorio );
              Memo1.Lines.Add( 'Apresentacao: '       + DTCmed1.RetornoCMED[i].Apresentacao );
              Memo1.Lines.Add( 'Classe terapeutica: ' + DTCmed1.RetornoCMED[i].ClasseTerapeutica );
              Memo1.Lines.Add( 'Tipo produto: '       + DTCmed1.RetornoCMED[i].TipoProduto );
              Memo1.Lines.Add( 'Tarja: '              + DTCmed1.RetornoCMED[i].Tarja );
              Memo1.Lines.Add( '===========================================' );
        end;

end;

end.
