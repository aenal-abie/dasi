unit Login;

interface

uses SysUtils, Dialogs, Classes, UKoneksi;

type
  TFLogin = class(TKoneksi)
  private
    Fusername: string;
    Fpassword: string;
    FDataUser: TStringList;
    procedure setAdd;
    procedure Setusername(const Value: string);
    procedure Setpassword(const Value: string);
    function getLogin: Boolean;
  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property login: Boolean read getLogin;
    property username: string read Fusername write Setusername;
    property password: string read Fpassword write Setpassword;

  end;
var
  FLogin: TFLogin;
implementation

uses
  UVariabel;

{ TFNominal }
         {
constructor TFNominal.Create(AOwner: TComponent);
begin
  inherited;
  FDataNominal:=TStringList.Create;
end;

function TFNominal.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_nominal', IntToStr(FKode_Nominal));
    Result:=True;
  except
    Result:=False;
  end;
end;

procedure TFNominal.setAdd;
begin
  with FDataNominal do
  begin
    Clear;
    Add(CurrToStr(FNominal));
    Add(FJenis_Uang);
  end;
end;

procedure TFNominal.setJenisUang(const Value: String);
begin
  FJenis_Uang:=Value;
end;

procedure TFNominal.setKodeNominal(const Value: Integer);
begin
  FKode_Nominal:=Value;
end;

procedure TFNominal.setNominal(const Value: Currency);
begin
  FNominal:=Value;
end;

function TFNominal.setSimpan: Boolean;
begin
  try
    setAdd();
    eksekusi_SPsql('sp_add_nominal', FDataNominal);
    Result:=True;
  except
    Result:=False;
  end;
end;

function TFNominal.setUbah: Boolean;
begin
  try
    setAdd;
    FDataNominal.Add(IntToStr(FKode_Nominal));
    eksekusi_SPsql('sp_update_nominal', FDataNominal);
    Result:=True;
  except
    Result:=False;
  end;
end;
    }
{ TFLogin }

constructor TFLogin.Create(AOwner: TComponent);
begin
  inherited;
  FDataUser := TStringList.Create;
end;

function TFLogin.getLogin: Boolean;
begin
  try
    setAdd();
    FPUserId := eksekusi_FCsql('fc_login', FDataUser);
    //ShowMessage(FPuser);
    if (FPUserId <> '') then
      Result := True;
  except
    Result := False;
  end;
end;

procedure TFLogin.setAdd;
begin
  with FDataUser do
  begin
    Clear;
    Add(username);
    Add(password);
  end;
end;

procedure TFLogin.Setpassword(const Value: string);
begin
  Fpassword := Value;
end;

procedure TFLogin.Setusername(const Value: string);
begin
  Fusername := Value;
end;

end.

