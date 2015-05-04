unit Kelompok;

interface

uses SysUtils, UKoneksi, Classes, Dialogs;

Type
  TFKelompok=class(TKoneksi)
  private
    FKd_Kel_Lama:String;
    FNama_Kel, FJenis:String;
    FDataKelompok:TStringList;
    function hapus: Boolean;
    procedure setJenis(const Value: String);
    procedure setNamaKelompok(const Value: String);
    procedure setAdd();
    function setSimpan: Boolean;
    function setUbah: Boolean;
    procedure setKodeLama(const Value: String);
  protected
  public
    constructor Create(AOwner:TComponent);override;
  published
  property insert:Boolean read setSimpan;
  property Update:Boolean read setUbah;
  property Delete:Boolean read hapus;
  property kd_kel_lama:String write setKodeLama;
  property nama_kel:String write setNamaKelompok;
  property jenis:String write setJenis;//jenis kelompok perkiraan apakan 'IN' atau 'Out'
end;

implementation

{ TFKelompok }

constructor TFKelompok.Create(AOwner: TComponent);
begin
  inherited;
  FDataKelompok:=TStringList.Create;
end;

function TFKelompok.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_kelompok', FKd_Kel_Lama);
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;
end;

procedure TFKelompok.setAdd;
begin
  with FDataKelompok do
  begin
    Clear;
    Add(FNama_Kel);
    Add(FJenis);
  end;
end;

procedure TFKelompok.setJenis(const Value: String);
begin
 FJenis:=Value;
end;

procedure TFKelompok.setKodeLama(const Value: String);
begin
 FKd_Kel_Lama:=Value;
end;

procedure TFKelompok.setNamaKelompok(const Value: String);
begin
 FNama_Kel:=Value;
end;

function TFKelompok.setSimpan: Boolean;
begin
  try
    setAdd();
    eksekusi_SPsql('sp_add_kelompok',FDataKelompok);
    Result:=True;
  except
    Result:=False;
  end;
end;

function TFKelompok.setUbah: Boolean;
begin
  try
    setAdd;
    FDataKelompok.Add(FKd_Kel_Lama);
    eksekusi_SPsql('sp_update_kelompok', FDataKelompok);
    Result:=True;
  except
    Result:=False;
  end;
end;

end.
