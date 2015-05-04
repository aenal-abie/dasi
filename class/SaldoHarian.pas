unit SaldoHarian;

interface
uses SysUtils, Controls, UKoneksi, Dialogs, Classes, ADODB, Windows;

type
  TSaldoHarian = class(TKoneksi)
  private
    FTanggal: TDateTime;
    FSaldoAkhir: Double;
    FKode_Penyimpanan: string;
    FTgl_sblmnya: TDateTime;
    FDataTutup: TStringList;
    FSaldoKas: Double;
    FSaldoAkhirKas: Double;
    function getSaldoAwal: Double;
    function getTotalPenerimaan: Double;
    function getTotalPenerimaan_Kas: Double;
    function getTotalPengeluaran_kas: Double;
    procedure SetTanggal(const Value: TDateTime);
    function getTotalPengeluaran: Double;
    function ProsesTutup: Boolean;
    procedure setAdd();
    function cek_tutup: Boolean;
    procedure SetSaldoAkhir(const Value: Double);
    procedure SetKode_Penyimpanan(const Value: string);
    procedure SetTgl_sblmnya(const Value: TDateTime);
    function get_tgl_sblmnya: TDateTime;
    function getAktualSaldoAwal: Double;
    procedure SetSaldoAkhirKas(const Value: Double);
  public
    procedure kosongkan_list;
    constructor Create(AOwner: TComponent); override;
  published
    property SaldoAwal: Double read getSaldoAwal;
    property saldoAwalAktual: Double read getAktualSaldoAwal;
    property TotalPenerimaan: Double read getTotalPenerimaan;
    property TotalPengeluaran: Double read getTotalPengeluaran;
    property Tanggal: TDateTime write SetTanggal;
    property Tutup: Boolean read ProsesTutup;
    property SaldoAkhir: Double write SetSaldoAkhir;
    property SudahTutup: Boolean read cek_tutup;
    property Kode_Penyimpanan: string read FKode_Penyimpanan write
      SetKode_Penyimpanan;
    property Tgl_sblmnya: TDateTime read FTgl_sblmnya write SetTgl_sblmnya;
    property tglKemarin: TDateTime read get_tgl_sblmnya;
    property SaldoAkhirKas: Double read FSaldoAkhirKas write SetSaldoAkhirKas;
    property TotalPengeluaranKas: Double read getTotalPengeluaran_kas;
    property TotalPenerimaanKas: Double read getTotalPenerimaan_Kas;

  end;

implementation

uses
  UVariabel;

{ TSaldoHarian }

function TSaldoHarian.cek_tutup: Boolean;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, 'select * from tbl_saldo_harian where ' +
    ' tgl=DATE_FORMAT(NOW(),"%Y-%m-%d") ' +
    ' order by tgl desc limit 1');
  if (pado.RecordCount > 0) then
    Result := True
  else
    Result := False;
end;

constructor TSaldoHarian.Create(AOwner: TComponent);
begin
  inherited;
  FDataTutup := TStringList.Create;
  FDataTutup.Clear;
end;

function TSaldoHarian.getAktualSaldoAwal: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, 'select sum(saldo) as saldo from tbl_saldo_harian where ' +
    ' tgl=' + QuotedStr(FormatDateTime('YYYY-MM-DD', Tgl_sblmnya)) +
    ' and kode_penyimpanan=' + QuotedStr(FPPenyimpanan) + ' limit 1');
  if (pado.RecordCount > 0) then
    Result := pado.FieldByName('saldo').AsFloat;
  pado.Free;
end;

function TSaldoHarian.getSaldoAwal: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select kode_penyimpanan from tbl_penyimpanan where akumulasi ="Y"');
  Self.Tag := pado.RecordCount;
  {view_ado(pado, 'select sum(saldo) as saldo from tbl_saldo_harian where ' +
    ' tgl<' + QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) +
    // ' and kode_penyimpanan=' + FPPenyimpanan + ' order by tgl desc limit '+IntToStr(Self.Tag));
    ' order by tgl desc limit ' + IntToStr(Self.Tag)); }
  view_ado(pado, 'SELECT sum(tbl_saldo_harian.saldo) as saldo ' +
    ' FROM tbl_saldo_harian     INNER JOIN tbl_penyimpanan ' +
    ' on tbl_saldo_harian.kode_penyimpanan =    tbl_penyimpanan.kode_penyimpanan' +
    ' WHERE tbl_penyimpanan.akumulasi = "Y" ' +
    '  and tgl = ' + QuotedStr(FormatDateTime('YYYY-MM-DD', FTgl_sblmnya)) +
    ' limit ' + IntToStr(Self.Tag));
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('saldo').AsFloat;
  pado.Free;
end;

function TSaldoHarian.getTotalPenerimaan: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select sum(tbl_transaksi_harian.total) as total from tbl_transaksi_harian ' +
    ' where DATE_FORMAT(tbl_transaksi_harian.tanggal,"%Y-%m-%d")=' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('total').AsFloat;
  view_ado(pado,
    'SELECT sum(tbl_mutasi.jumlah) as total FROM tbl_mutasi INNER JOIN tbl_penyimpanan ON ' +
    ' tbl_mutasi.dari= tbl_penyimpanan.kode_penyimpanan  WHERE tbl_mutasi.ke = ' + FPPenyimpanan
    + ' and ' + ' DATE_FORMAT(tbl_mutasi.tgl_mutasi, "%Y-%m-%d") = ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) +
      ' and tbl_penyimpanan.akumulasi<>"Y" ');
  if (pado.RecordCount > 0) then
    Result := Result + pado.Fieldbyname('total').AsFloat;
  pado.Free;
end;

function TSaldoHarian.getTotalPenerimaan_Kas: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select sum(tbl_transaksi_harian.total) as total from tbl_transaksi_harian ' +
    ' where DATE_FORMAT(tbl_transaksi_harian.tanggal,"%Y-%m-%d")=' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('total').AsFloat;
  view_ado(pado,
    'SELECT sum(tbl_mutasi.jumlah) as total FROM tbl_mutasi INNER JOIN tbl_penyimpanan ON ' +
    ' tbl_mutasi.dari= tbl_penyimpanan.kode_penyimpanan  WHERE tbl_mutasi.ke = ' + FPPenyimpanan
    + ' and ' + ' DATE_FORMAT(tbl_mutasi.tgl_mutasi, "%Y-%m-%d") = ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := Result + pado.Fieldbyname('total').AsFloat;
  pado.Free;

end;

function TSaldoHarian.getTotalPengeluaran: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select sum(tbl_pengeluaran.total) as total from tbl_pengeluaran ' +
    ' where DATE_FORMAT(tbl_pengeluaran.tanggal,"%Y-%m-%d")=' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('total').AsFloat;

  view_ado(pado, 'SELECT  sum(tbl_mutasi.jumlah) as total FROM tbl_mutasi ' +
    'INNER JOIN tbl_penyimpanan ON tbl_mutasi.ke = tbl_penyimpanan.kode_penyimpanan ' +
    ' where tbl_mutasi.dari=' + FPPenyimpanan +
    ' AND DATE_FORMAT(tbl_mutasi.tgl_mutasi,"%Y-%m-%d") = ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) +
      ' and tbl_penyimpanan.akumulasi<>"Y"');
  if (pado.RecordCount > 0) then
    Result := Result + pado.Fieldbyname('total').AsFloat;
  pado.Free;
end;

function TSaldoHarian.getTotalPengeluaran_kas: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select sum(tbl_pengeluaran.total) as total from tbl_pengeluaran ' +
    ' where DATE_FORMAT(tbl_pengeluaran.tanggal,"%Y-%m-%d")=' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('total').AsFloat;

  view_ado(pado, 'SELECT  sum(tbl_mutasi.jumlah) as total FROM tbl_mutasi ' +
    'INNER JOIN tbl_penyimpanan ON tbl_mutasi.ke = tbl_penyimpanan.kode_penyimpanan ' +
    ' where tbl_mutasi.dari=' + FPPenyimpanan +
    ' AND DATE_FORMAT(tbl_mutasi.tgl_mutasi,"%Y-%m-%d") = ' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + '');
  if (pado.RecordCount > 0) then
    Result := Result + pado.Fieldbyname('total').AsFloat;
  pado.Free;

end;

function TSaldoHarian.get_tgl_sblmnya: TDateTime;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, '  select tgl from tbl_saldo_harian ' +
    ' where tgl <> ' + QuotedStr(FormatDateTime('YYYY-MM-DD', Now)) +
    ' order by tgl desc limit 1 ');
  Result := pado.FieldByName('tgl').AsDateTime;
  pado.Free;
end;

procedure TSaldoHarian.kosongkan_list;
begin
  FDataTutup.Clear;
end;

function TSaldoHarian.ProsesTutup: Boolean;
var
  pado: TADOQuery;
begin
  Result := False;
  setAdd;
  if (cek_tutup = False) then
  begin
    eksekusi_SPsql('sp_tutup', FDataTutup);
    pado := TADOQuery.Create(ADOKoneksi);
    eksekusi_sql('insert into  tbl_saldo_harian set tgl=' +
      QuotedStr(FormatDateTime('YYYY-MM-DD', FTanggal)) + ','
      + ' saldo=' + QuotedStr(FloatToStr(FSaldoAkhirKas)) + ', kode_penyimpanan='
        +
      Kode_Penyimpanan + '');
    Result := True;
    pado.Free;
  end
  else
    Result := False;
end;

procedure TSaldoHarian.setAdd;
begin
  with FDataTutup do
  begin
    Clear;
    Add(FPPenyimpanan);
    Add(FormatDateTime('YYYY-MM-DD', FTanggal))
  end;
end;

procedure TSaldoHarian.SetKode_Penyimpanan(const Value: string);
begin
  FKode_Penyimpanan := Value;
end;

procedure TSaldoHarian.SetSaldoAkhir(const Value: Double);
begin
  FSaldoAkhir := Value;
end;

procedure TSaldoHarian.SetSaldoAkhirKas(const Value: Double);
begin
  FSaldoAkhirKas := Value;
end;

procedure TSaldoHarian.SetTanggal(const Value: TDateTime);
begin
  FTanggal := Value;
end;

procedure TSaldoHarian.SetTgl_sblmnya(const Value: TDateTime);
begin
  FTgl_sblmnya := Value;
end;

end.

