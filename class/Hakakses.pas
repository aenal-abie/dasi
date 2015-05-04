unit Hakakses;

interface

uses SysUtils, Dialogs, Classes, UKoneksi,Windows;

type
  TFHakAkses = class(TKoneksi)
  private
    FDataHakases: TStringList;
    Fmodul_id: Byte;
    Fmodul_name: string;
    Fuser_id: string;
    Finsert: Boolean;
    FDelete: Boolean;
    Fremove: Boolean;
    procedure setAdd;
    procedure Setmodul_id(const Value: Byte);
    procedure Setmodul_name(const Value: string);
    procedure Setuser_id(const Value: string);
    function getInsert: Boolean;
    procedure SetDelete(const Value: Boolean);
    function getDelete: Boolean;
    function getRemove: Boolean;
  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property insert: Boolean read getInsert;
    property Delete: Boolean read getDelete;
    property Remove: Boolean read getRemove;
    property modul_id: Byte read Fmodul_id write Setmodul_id;
    property modul_name: string read Fmodul_name write Setmodul_name;
    property user_id: string read Fuser_id write Setuser_id;
  end;
var
  FHakakses: TFHakAkses;
implementation



{FHakakses}

constructor TFHakAkses.Create(AOwner: TComponent);
begin
  inherited;
  FDataHakases := TStringList.Create;
end;

function TFHakAkses.getDelete: Boolean;
begin
  eksekusi_sql('delete from tbl_hak_akses where id_user=' + QuotedStr(Fuser_id)
    +
    ' and id_modul=' + QuotedStr(IntToStr(modul_id)));
  Result := True;
end;

function TFHakAkses.getInsert: Boolean;
begin
  try
    setAdd();
    eksekusi_SPsql('sp_add_hak_akses', FDataHakases);
    Result := True;
  except
    Result := False;
  end;
end;

function TFHakAkses.getRemove: Boolean;
begin
  try
    eksekusi_sql('delete from tbl_hak_akses where id_user=' +
      QuotedStr(Fuser_id));
    Result := True;
  except
    Result:=False;
    ShowMessage('Gagal Mengahapus Seluruh Hak akses');
  end;

end;

procedure TFHakAkses.setAdd;
begin
  with FDataHakases do
  begin
    Clear;
    Add(IntToStr(modul_id));
    Add(modul_name);
    Add(user_id);
  end;
end;

procedure TFHakAkses.SetDelete(const Value: Boolean);
begin
  FDelete := Value;
end;

procedure TFHakAkses.Setmodul_id(const Value: Byte);
begin
  Fmodul_id := Value;
end;

procedure TFHakAkses.Setmodul_name(const Value: string);
begin
  Fmodul_name := Value;
end;

procedure TFHakAkses.Setuser_id(const Value: string);
begin
  Fuser_id := Value;
end;

end.
 
