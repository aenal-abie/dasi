unit Mutasi;

interface

uses SysUtils, UKoneksi, Classes;

type
  TFMutasi = class(TKoneksi)
  private
    FTanggal, FKeterangan: string;
    FNo_Mutasi, FDari, FKe: Integer;
    FJumlah: Currency;
    FDataMutasi: TStringList;
    Fno_cek: string;
    function hapus: Boolean;
    procedure setDari(const Value: Integer);
    procedure setJumlah(const Value: Currency);
    procedure setKe(const Value: Integer);
    procedure setKeterangan(const Value: string);
    procedure setAdd();
    function setSimpan: Boolean;
    procedure setTanggal(const Value: string);
    function setUbah: Boolean;
    procedure setNoMutasi(const Value: integer);
    procedure Setno_cek(const Value: string);
  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property no_mutasi: integer write setNoMutasi;
    property tanggal: string write setTanggal;
    property dari: Integer write setDari;
    property ke: Integer write setKe;
    property jumlah: Currency write setJumlah;
    property keterangan: string write setKeterangan;
    property no_cek: string write Setno_cek;
  end;

implementation

{ TFMutasi }

constructor TFMutasi.Create(AOwner: TComponent);
begin
  inherited;
  FDataMutasi := TStringList.Create;
end;

function TFMutasi.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_mutasi', IntToStr(FNo_Mutasi));
  except
    Result := False;
  end;
end;

procedure TFMutasi.setAdd;
begin
  with FDataMutasi do
  begin
    Clear;
    Add(FTanggal);
    Add(IntToStr(FDari));
    Add(IntToStr(FKe));
    Add(CurrToStr(FJumlah));
    Add(FKeterangan);
    Add(Fno_cek);
  end;
end;

procedure TFMutasi.setDari(const Value: Integer);
begin
  FDari := Value;
end;

procedure TFMutasi.setJumlah(const Value: Currency);
begin
  FJumlah := Value;
end;

procedure TFMutasi.setKe(const Value: Integer);
begin
  FKe := Value;
end;

procedure TFMutasi.setKeterangan(const Value: string);
begin
  FKeterangan := Value;
end;

procedure TFMutasi.setNoMutasi(const Value: integer);
begin
  FNo_Mutasi := Value;
end;

procedure TFMutasi.Setno_cek(const Value: string);
begin
  Fno_cek := Value;
end;

function TFMutasi.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_mutasi', FDataMutasi);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFMutasi.setTanggal(const Value: string);
begin
  FTanggal := Value;
end;

function TFMutasi.setUbah: Boolean;
begin
  try
    setAdd;
    FDataMutasi.Add(IntToStr(FNo_Mutasi));
    eksekusi_SPsql('sp_update_mutasi', FDataMutasi);
  except
    Result := False;
  end;
end;

end.

