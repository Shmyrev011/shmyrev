unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: char);
    procedure Edit8KeyPress(Sender: TObject; var Key: char);
    procedure Edit9KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation
  uses Unit2;
{$R *.lfm}

  { TForm1 }

  procedure TForm1.Button1Click(Sender: TObject);
  begin
    Form2.Show
  end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a,b,c,d,e,f,g,q,w:real;
begin
 a:=StrToFloat(Edit7.Text);
 //км
 b:=StrToFloat(Edit8.Text);
 //мили
 c:=StrToFloat(Edit9.Text);
 //метры
 d:=a/1.609;
 e:=a/3.6;
 f:=b*2.237;
 g:=b*1.609;
 q:=c*3.6;
 w:=b/ 2.237;
  Edit1.Caption:= FloatToStr(d);
  Edit2.Caption:= FloatToStr(e);
  Edit3.Caption:= FloatToStr(f);
  Edit4.Caption:= FloatToStr(g);
  Edit5.Caption:= FloatToStr(q);
  Edit6.Caption:= FloatToStr(w);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.clear;
  Edit2.clear;
  Edit3.clear;
  Edit4.clear;
  Edit5.clear;
  Edit6.clear;
  Edit7.clear;
  Edit8.clear;
  Edit9.clear;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: char);
begin
  f not (Key in [#8, '0'..'9',',']) then
begin
MessageDlg('Введите положительное число',mtInformation,[mbOk],0);
Key:=#0;
end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: char);
begin
  f not (Key in [#8, '0'..'9',',']) then
begin
MessageDlg('Введите положительное число',mtInformation,[mbOk],0);
Key:=#0;
end;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: char);
begin
  f not (Key in [#8, '0'..'9',',']) then
begin
MessageDlg('Введите положительное число',mtInformation,[mbOk],0);
Key:=#0;
end;
end;

end.

