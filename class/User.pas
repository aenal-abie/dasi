unit User;

interface
uses
  UKoneksi, DB, SysUtils, Classes, Dialogs;

type
  TFUser = class(Tkoneksi)
  private
    FKode: Integer;
    FDataUser: TStringList;
    Fkode_amil: string;
    Fpassword: string;
    FUserName: string;
    procedure SetKode(const Value: Integer);
    procedure setAdd;
    function setHapus: Boolean;
    function setSimpan: Boolean;
    function setUpdate: Boolean;
    procedure Setkode_amil(const Value: string);
    procedure Setpassword(const Value: string);
    procedure SetUserName(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Delete: Boolean read setHapus;
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUpdate;
    property Kode: Integer read FKode write SetKode;
    property kode_amil: string read Fkode_amil write Setkode_amil;
    property UserName: string read FUserName write SetUserName;
    property password: string read Fpassword write Setpassword;
  end;

implementation

{ TFKabupaten }

constructor TFUser.Create(AOwner: TComponent);
begin
  inherited;
  FDataUser := TStringList.Create;
end;

procedure TFUser.setAdd;
begin
  with FDataUser do
  begin
    Clear;
    Add(FUserName);
    Add(Fpassword);
    Add(Fkode_amil)
  end;

end;

function TFUser.setHapus: Boolean;
begin
  Result := False;
  try
    eksekusi_SPsql('sp_del_user', IntToStr(FKode));
    Result := True;
  except
    ShowMessage('Gagal Hapus Data');
    Result := False;
  end;
end;

procedure TFUser.SetKode(const Value: Integer);
begin
  FKode := Value;
end;

procedure TFUser.Setkode_amil(const Value: string);
begin
  Fkode_amil := Value;
end;

procedure TFUser.Setpassword(const Value: string);
begin
  Fpassword := Value;
end;

function TFUser.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_user', FDataUser);
    Result := True;
  except
    Result := false;
  end;

end;

function TFUser.setUpdate: Boolean;
begin
  begin
    try
      setAdd;
      FDataUser.Add(IntToStr(FKode));
      eksekusi_SPsql('sp_update_user', FDataUser);
      Result := True;
    except
      Result := false;
    end;
  end;

end;

procedure TFUser.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.

