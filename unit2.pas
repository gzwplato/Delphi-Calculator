unit Unit2;

interface

uses
  Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Ezahl1: TEdit;
    Ezahl2: TEdit;
    Label2: TLabel;
    Eoperator: TEdit;
    Lergebnis: TLabel;
    procedure Button1Click(Sender: TObject);                                    //Deklaration der Procdure Button1Click
    procedure Ezahl1KeyPress(Sender: TObject; var Key: Char);                   //Deklaration der Ezahl1KeyPress
    procedure EoperatorKeyPress(Sender: TObject; var Key: Char);                //Deklaration der EoperatorKeyPress
    procedure Ezahl2KeyPress(Sender: TObject; var Key: Char);                   //Deklaration der Ezahl2KeyPress
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;                                                                //Deklaration der Variable Form1 vom typ TForm1
  zahl1: real;                                                                  //Deklaration der Variable Form1 vom typ real
  zahl2: real;                                                                  //Deklaration der Variable Form1 vom typ real
  ergebnis: real;                                                               //Deklaration der Variable Form1 vom typ real


implementation

{$R *.lfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
zahl1:= StrToFloat(Ezahl1.Text);                                                //Konvertiren von Ezahl1.Text zu Float und zuweisen zu zahl1
zahl2:= StrToFloat(Ezahl2.Text);                                                //Konvertiren von Ezahl1.Text zu Float und zuweisen zu zahl1
if Eoperator.Text = '+' then ergebnis:= zahl1 + zahl2;                          //Wenn Eoperator.Text = '+' dann wird zahl1 mit zahl2 addirt
if Eoperator.Text = '-' then ergebnis:= zahl1 - zahl2;                          //Wenn Eoperator.Text = '+' dann wird zahl1 mit zahl2 subtrahirt
if Eoperator.Text = '*' then ergebnis:= zahl1 * zahl2;                          //Wenn Eoperator.Text = '+' dann wird zahl1 mit zahl2 multiplizirt
if Eoperator.Text = '/' then ergebnis:= zahl1 / zahl2;                          //Wenn Eoperator.Text = '+' dann wird zahl1 mit zahl2 dividirt
Lergebnis.Caption:= FloatToStr(ergebnis);                                       //Das Ergebnis der Rechnung wird in einen String umgewandelt und Ausgegeben


end;

procedure TForm1.Ezahl1KeyPress(Sender: TObject; var Key: Char);                //Lässt nur die eingbe der erlaubten eingaben zu.
begin
if not (Key IN['0'..'9',',','.',#8])then                                        //Prüfung der eingbe
   begin
   ShowMessage('Zahl eingeben!');
   Key:=#0;
   end;
end;

procedure TForm1.EoperatorKeyPress(Sender: TObject; var Key: Char);             //Lässt nur die eingbe der erlaubten eingaben zu.
begin
if not (Key IN['+','-','*','/',#8])then                                         //Prüfung der eingbe
   begin
   ShowMessage('Operator eingeben!');                                           //Fehler meldung bei falscher eingabe
   Key:=#0;
   end;
end;

procedure TForm1.Ezahl2KeyPress(Sender: TObject; var Key: Char);                //Lässt nur die eingbe der erlaubten eingaben zu.
begin
if not (Key IN['0'..'9',',','.',#8])then                                        //Prüfung der eingbe
   begin
   ShowMessage('Zahl eingeben!');                                               //Fehler meldung bei falscher eingabe
   Key:=#0;
   end;
end;

end.

