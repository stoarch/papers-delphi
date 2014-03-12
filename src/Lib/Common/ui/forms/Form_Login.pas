unit Form_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Skined, StdCtrls, Mask,
  sButton, sEdit, sLabel, sSkinProvider;

type
  TLoginForm = class(TSkinedForm)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    nick_edit: TsEdit;
    password_edit: TsEdit;
    login_button: TsButton;
    cancel_button: TsButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function getUserNick() : string;
    function getUserPassword()  : string;

  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

{ TLoginForm }

function TLoginForm.getUserNick: string;
begin
  result := nick_edit.Text;
end;

function TLoginForm.getUserPassword: string;
begin
  result := password_edit.Text;             //TODO: implement the encoding of password
end;


end.
