unit MutasiOperasional;

interface

uses SysUtils, UKoneksi, Classes,UVariabel;

type
  TFMutasiOperasional = class(TKoneksi)
  private
    FTanggal, FKeterangan: string;
    FNo_Mutasi: Integer;
    FDari, FKe: string;
    FJumlah: Currency;
    FDataMutasi: TStringList;
    function hapus: Boolean;
    procedure setDari(const Value: string);
    procedure setJumlah(const Value: Currency);
    procedure setKe(const Value: string);
    procedure setKeterangan(const Value: string);
    procedure setAdd();
    function setSimpan: Boolean;
    procedure setTanggal(const Value: string);
    function setUbah: Boolean;
    procedure setNoMutasi(const Value: integer);
    function getLunas: Boolean;
  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property no_mutasi: integer write setNoMutasi;
    property tanggal: string write setTanggal;
    property dari: string write setDari;
    property ke: string write setKe;
    property jumlah: Currency write setJumlah;
    property keterangan: string write setKeterangan;
    property Lunasi: Boolean read getLunas;
  end;

implementation

{ TFMutasi }

constructor TFMutasiOperasional.Create(AOwner: TComponent);
begin
  inherited;
  FDataMutasi := TStringList.Create;
end;

function TFMutasiOperasional.getLunas: Boolean;
begin
  Result := False;
  eksekusi_sql('update tbl_peminjaman_operasional set ' +
    'status="Lunas", tgl_lunas='+QuotedStr(FormatDateTime('YYYY-MM-DD',Date))+
    ', periode_lunas='+QuotedStr(FPPeriode)+' where id=' + IntToStr(FNo_Mutasi));
  Result := True;
end;

function TFMutasiOperasional.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_mutasi_op', IntToStr(FNo_Mutasi));
  except
    Result := False;
  end;
end;

procedure TFMutasiOperasional.setAdd;
begin
  with FDataMutasi do
  begin
    Clear;
    Add(FTanggal);
    Add(FDari);
    Add(FKe);
    Add(CurrToStr(FJumlah));
    Add(FKeterangan);
    Add(FPPeriode)
  end;
end;

procedure TFMutasiOperasional.setDari(const Value: string);
begin
  FDari := Value;
end;

procedure TFMutasiOperasional.setJumlah(const Value: Currency);
begin
  FJumlah := Value;
end;

procedure TFMutasiOperasional.setKe(const Value: string);
begin
  FKe := Value;
end;

procedure TFMutasiOperasional.setKeterangan(const Value: string);
begin
  FKeterangan := Value;
end;

procedure TFMutasiOperasional.setNoMutasi(const Value: integer);
begin
  FNo_Mutasi := Value;
end;

function TFMutasiOperasional.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_mutasi_op', FDataMutasi);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFMutasiOperasional.setTanggal(const Value: string);
begin
  FTanggal := Value;
end;

function TFMutasiOperasional.setUbah: Boolean;
begin
  try
    setAdd;
    FDataMutasi.Add(IntToStr(FNo_Mutasi));
    eksekusi_SPsql('sp_update_mutasi_op', FDataMutasi);
  except
    Result := False;
  end;
end;

end.

