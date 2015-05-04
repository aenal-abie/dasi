unit Transaksi;

interface
uses SysUtils, Dialogs, UKoneksi, cxCalendar, Classes, ADODB;

type
  TFTransaksi = class(TKoneksi)
  private
    FKodeKwitansi, FKodeKwLama, FKodeAmil, FKodeDonatur, FPeriode: string;
    FTanggal, FTanggalEnd: string;
    FTotal: Currency;
    FKode_Penyimpanan: Integer;
    FDataTransaksi: TStringList;
    Fsaldo_kemitraan: Double;
    procedure setKodeAmil(const Value: string);
    procedure setKodeDonatur(const Value: string);
    procedure setKodeKwitansi(const Value: string);
    procedure setPeriode(const Value: string);
    procedure setTanggal(const Value: string);
    procedure setTotal(const Value: Currency);
    procedure setAdd();
    procedure setKodeKwLama(const Value: string);
    function hapus: Boolean;
    function setSimpan: Boolean;
    function setUbah: Boolean;
    procedure setKodePenyimpanan(const Value: Integer);
    procedure setTangganEnd(const Value: string);
    procedure Setsaldo_kemitraan(const Value: Double);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    procedure detailKwitansi(AdoQry: TADOQuery; noKwitansi: string);
    procedure FilterTransaksi;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property kode_kwitansi: string write setKodeKwitansi;
    property kode_kwitansi_lama: string write setKodeKwLama;
    property tanggal: string write setTanggal;
    property tanggalEnd: string write setTangganEnd;
    property kode_amil: string write setKodeAmil;
    property kode_donatur: string write setKodeDonatur;
    property periode: string write setPeriode;
    property total: Currency write setTotal;
    property saldo_kemitraan: Double read Fsaldo_kemitraan write
      Setsaldo_kemitraan;
    property kode_penyimpanan: Integer write setKodePenyimpanan;
  end;

type
  TFDetailTransaksi = class(TFTransaksi)
  private
    FID_Detail_Trx: Integer;
    FSubtotal: Currency;
    FPenyaluran, FOperasional: Double;
    FID_Perkiraan, FKeterangan: string;
    FJumlah_Kencrengan: Byte;
    FKemitraan: Currency;
    procedure setIDPerkiraan(const Value: string);
    procedure setKeterangan(const Value: string);
    procedure setSubtotal(const Value: Currency);
    procedure setAdd();
    function hapus: Boolean;
    function setSimpan: Boolean;
    function setUbah: Boolean;
    procedure setIDDetailTransaksi(const Value: integer);
    function getSubtotal: Currency;
    procedure SetJumlah_Kencrengan(const Value: Byte);
    procedure setOperasioanl(const Value: Currency);
    procedure setPeyaluran(const Value: Currency);
    procedure SetKemitraan(const Value: Currency);
  protected
  public
    procedure LihatDetailTransaksi(noKwitansi, INOUT: string);
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property id_dtl_trx: integer write setIDDetailTransaksi;
    property id_perkiraan: string write setIDPerkiraan;
    property subtotal: Currency read getSubtotal write setSubtotal;
    property keterangan: string write setKeterangan;
    property Jumlah_Kencrengan: Byte read FJumlah_Kencrengan write
      SetJumlah_Kencrengan default 0;
    property Operasional: Currency write setOperasioanl;
    property Penyaluran: Currency write setPeyaluran;
    property Kemitraan: Currency read FKemitraan write SetKemitraan;
  end;


  TFKencrengan = class(TFTransaksi)
  private
    FKodeNominal, FQty: Integer;
    FJumlah: Currency;
    FDataKencrengan: TStringList;
    Ftes: string;
    procedure setKodeNominal(const Value: integer);
    procedure setQuantity(const Value: integer);
    procedure setSubtotal(const Value: Currency);
    procedure setAdd();
    function hapus: Boolean;
    function setSimpan: Boolean;
    function setUbah: Boolean;
    procedure Settes(const Value: string);

  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property kode_nominal: integer write setKodeNominal;
    property qty: integer write setQuantity;
    property jumlah: Currency write setSubtotal;

  end;

implementation

uses
  UVariabel;

{ TFTransaksi }

constructor TFTransaksi.Create(AOwner: TComponent);
begin
  inherited;
  FDataTransaksi := TStringList.Create;
end;

procedure TFTransaksi.detailKwitansi(AdoQry: TADOQuery;
  noKwitansi: string);
begin
  lihat_hasil(AdoQry, 'select*from tbl_detail_transaksi where kode_kwitansi='''
    + noKwitansi + '''');
end;

procedure TFTransaksi.FilterTransaksi;
begin

end;

function TFTransaksi.hapus: Boolean;
begin
  Result := False;
  //if (FPeriode = ADOKoneksi.gperiode) then
  if (FPeriode = FPPeriode) then
  begin
    eksekusi_SPsql('sp_del_trx_harian', FKodeKwitansi);
    //eksekusi_SPsql('sp_del_trx_harian');
    Result := True;
  end
end;

procedure TFTransaksi.setAdd;
begin
  with FDataTransaksi do
  begin
    Clear;
    Add(FKodeKwitansi);
    Add(FTanggal);
    Add(FKodeAmil);
    Add(FKodeDonatur);
    Add(FPeriode);
    Add(konversi_decimal(FTotal));
    Add(IntToStr(FKode_Penyimpanan));
    Add(konversi_decimal(Fsaldo_kemitraan));
    Add(FPUserId);
  end;
end;

procedure TFTransaksi.setKodeAmil(const Value: string);
begin
  FKodeAmil := Value;
end;

procedure TFTransaksi.setKodeDonatur(const Value: string);
begin
  FKodeDonatur := Value;
end;

procedure TFTransaksi.setKodeKwitansi(const Value: string);
begin
  FKodeKwitansi := Value;
end;

procedure TFTransaksi.setKodeKwLama(const Value: string);
begin
  FKodeKwLama := Value;
end;

procedure TFTransaksi.setKodePenyimpanan(const Value: Integer);
begin
  FKode_Penyimpanan := Value;
end;

procedure TFTransaksi.setPeriode(const Value: string);
begin
  FPeriode := Value;
end;

procedure TFTransaksi.Setsaldo_kemitraan(const Value: Double);
begin
  Fsaldo_kemitraan := Value;
end;

function TFTransaksi.setSimpan: Boolean;
begin
  Result := False;
  setAdd;
  eksekusi_SPsql('sp_add_trx_harian', FDataTransaksi);
  Result := True;
  //ShowMessage(FloatToStr(FTotal));
end;

procedure TFTransaksi.setTanggal(const Value: string);
begin
  FTanggal := Value;
end;

procedure TFTransaksi.setTangganEnd(const Value: string);
begin
  FTanggalEnd := Value;
end;

procedure TFTransaksi.setTotal(const Value: Currency);
begin
  FTotal := Value;
end;

function TFTransaksi.setUbah: Boolean;
begin
  Result := False;
  setAdd;
  FDataTransaksi.Add(FKodeKwLama);
  eksekusi_SPsql('sp_update_trx_harian', FDataTransaksi);
  Result := True;
end;

{ TFDetailTransaksi }

function TFDetailTransaksi.getSubtotal: Currency;
begin
  Result := FSubtotal;
end;

function TFDetailTransaksi.hapus: Boolean;
begin
  Result := False;
  eksekusi_SPsql('sp_del_detail_trx', IntToStr(FID_Detail_Trx));
  Result := True;
end;

procedure TFDetailTransaksi.LihatDetailTransaksi(noKwitansi,
  INOUT: string);
begin
  lihat_hasil(ADOQuery,
    'select d.*, p.nama_perkiraan from tbl_detail_transaksi d ' +
    'left join tbl_perkiraan p on d.id_perkiraan=p.id_perkiraan ' +
    'inner join tbl_kelompok k on p.kd_kel=k.kd_kel where d.kode_kwitansi=''' + noKwitansi
    + ''' and k.jenis=''' + INOUT + '''');
end;

procedure TFDetailTransaksi.setAdd;
begin
  with FDataTransaksi do
  begin
    Clear;
    Add(FKodeKwitansi);
    Add(FID_Perkiraan);
    Add(CurrToStr(FSubtotal));
    Add(FKeterangan);
    Add(IntToStr(FJumlah_Kencrengan));
    Add(konversi_decimal(FOperasional));
    Add(konversi_decimal(FPenyaluran));
    //Add(FloatToStr(FKemitraan));
  end;
end;

procedure TFDetailTransaksi.setIDDetailTransaksi(const Value: integer);
begin
  FID_Detail_Trx := Value;
end;

procedure TFDetailTransaksi.setIDPerkiraan(const Value: string);
begin
  FID_Perkiraan := Value;
end;

procedure TFDetailTransaksi.SetJumlah_Kencrengan(const Value: Byte);
begin
  FJumlah_Kencrengan := Value;
end;

procedure TFDetailTransaksi.setKeterangan(const Value: string);
begin
  FKeterangan := Value;
end;

function TFDetailTransaksi.setSimpan: Boolean;
begin
  Result := False;
  setAdd;
  eksekusi_SPsql('sp_add_detail_trx', FDataTransaksi);
  Result := True;
end;

procedure TFDetailTransaksi.setSubtotal(const Value: Currency);
begin
  FSubtotal := Value;
end;

function TFDetailTransaksi.setUbah: Boolean;
begin
  Result := False;
  setAdd;
  FDataTransaksi.Add(IntToStr(FID_Detail_Trx));
  eksekusi_SPsql('sp_update_detail_trx', FDataTransaksi);
  Result := True;
end;

procedure TFDetailTransaksi.setPeyaluran(const Value: Currency);
begin
  FPenyaluran := Value;
end;

procedure TFDetailTransaksi.SetKemitraan(const Value: Currency);
begin
  FKemitraan := Value;
end;

{ TFKencrengan }

constructor TFKencrengan.Create(AOwner: TComponent);
begin
  inherited;
  FDataKencrengan := TStringList.Create;
end;

function TFKencrengan.hapus: Boolean;
begin
  Result := False;
  eksekusi_SPsql('sp_del_kencrengan', FKodeKwLama);
  Result := True;
end;

procedure TFKencrengan.setAdd;
begin
  with FDataKencrengan do
  begin
    Clear;
    Add(FKodeKwitansi);
    Add(IntToStr(FKodeNominal));
    add(IntToStr(FQty));
    Add(CurrToStr(FJumlah));
  end;
end;

procedure TFKencrengan.setKodeNominal(const Value: integer);
begin
  FKodeNominal := Value;
end;

procedure TFDetailTransaksi.setOperasioanl(const Value: Currency);
begin
  FOperasional := Value;
end;

procedure TFKencrengan.setQuantity(const Value: integer);
begin
  FQty := Value;
end;

function TFKencrengan.setSimpan: Boolean;
begin
  Result := False;
  setAdd;
  eksekusi_SPsql('sp_add_kencrengan', FDataKencrengan);
  Result := True;
end;

procedure TFKencrengan.setSubtotal(const Value: Currency);
begin
  FJumlah := Value;
end;

procedure TFKencrengan.Settes(const Value: string);
begin
  Ftes := Value;
end;

function TFKencrengan.setUbah: Boolean;
begin
  Result := False;
  setAdd;
  FDataKencrengan.Add(FKodeKwLama);
  eksekusi_SPsql('sp_update_kencrengan', FDataKencrengan);
  Result := True;
end;

end.

