unit SaldoKemitraan;

interface
uses SysUtils, UKoneksi, Dialogs, Classes, ADODB;

type
  TSaldoKemitraan = class(TKoneksi)
  private
    Fjumlah: Double;
    FKodeDonatur: string;
    FSaldoAwal: Double;
    FSaldoAkhir: Double;
    FTanggal: TDateTime;
    Fsaldo: Double;
    procedure setAdd();
    procedure Setjumlah(const Value: Double);
    procedure SetKodeDonatur(const Value: string);
    function getSaldoAwal: Double;
    function tambahKemitraan: Boolean;
    procedure SetSaldoAwal(const Value: Double);
    function setSimpan: Boolean;
    procedure SetTanggal(const Value: TDateTime);
    procedure Setsaldo(const Value: Double);
    //procedure SetSaldoAkhir(const Value: Double);
  published
    property KodeDonatur: string read FKodeDonatur write SetKodeDonatur;
    property jumlah: Double read Fjumlah write Setjumlah;
    property saldo:Double read Fsaldo write Setsaldo;
    property SaldoAwal: Double read getSaldoAwal write SetSaldoAwal;
    property Tanggal: TDateTime read FTanggal write SetTanggal;
    //property SaldoAkhir: Double write SetSaldoAkhir;
    property SaldoKemitraanBaru: Boolean read tambahKemitraan;
    property insert: Boolean read setSimpan;
  public

  end;
implementation

uses DB;

{ TSaldoOperasional }

function TSaldoKemitraan.getSaldoAwal: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, 'select saldo FROM tbl_saldo_kemitraan as sa where ' +
    ' sa.kode_donatur = ' + QuotedStr(FKodeDonatur));
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('saldo').AsFloat
  else
  begin
    tambahKemitraan;
    Result := 0;
  end;

end;

procedure TSaldoKemitraan.setAdd;
begin
  with FData do
  begin
    Clear;
    Add(FKodeDonatur);
    Add(FormatDateTime('YYYY-MM-DD', FTanggal));
    Add(FloatToStr(Fsaldo));
  end;
end;

procedure TSaldoKemitraan.Setjumlah(const Value: Double);
begin
  Fjumlah := Value;
end;

procedure TSaldoKemitraan.SetKodeDonatur(const Value: string);
begin
  FKodeDonatur := Value;
end;

{procedure TSaldoKemitraan.SetSaldoAkhir(const Value: Double);
begin
  eksekusi_sql('update tbl_saldo_kemitraan  set' +
    ' saldo = ' + QuotedStr(FloatToStr(Value)) + ' where kode_donatur =' +
    QuotedStr(FKodeDonatur));
  FSaldoAkhir := Value;
end;}

procedure TSaldoKemitraan.Setsaldo(const Value: Double);
begin
  Fsaldo := Value;
end;

procedure TSaldoKemitraan.SetSaldoAwal(const Value: Double);
begin
  FSaldoAwal := Value;
end;

function TSaldoKemitraan.setSimpan: Boolean;
begin
  try
    setAdd();
    //ShowMessage(KodeDonatur);
    eksekusi_SPsql('sp_add_saldo_awal_mitra', FData);
    Result := True;
  except
    Result := False;
  end;

end;

procedure TSaldoKemitraan.SetTanggal(const Value: TDateTime);
begin
  FTanggal := Value;
end;

function TSaldoKemitraan.tambahKemitraan: Boolean;
begin
  eksekusi_sql('insert into tbl_saldo_kemitraan set' +
    ' kode_donatur =' + QuotedStr(FKodeDonatur));
end;

end.

