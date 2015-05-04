unit SaldoAwal;

interface

uses SysUtils, UKoneksi, Dialogs, Classes, ADODB;

type
  TFSaldoAwal = class(TKoneksi)
  private
    Fid_perkiraan: string;
    Fpriode: string;
    Fsaldo_awal: Currency;
    FDataSaldo: TStringList;
    procedure add(value: string);
    function cek_saldo_awal: Boolean;
    procedure Setid_perkiraan(const Value: string);
    procedure Setpriode(const Value: string);
    procedure Setsaldo_awal(const Value: Currency);
    function getSimapan: Boolean;
    function prosesUpdate: Boolean;
    function cek_sudah_ada_transaksi: Boolean;
  published
    property Insert: Boolean read getSimapan;
    property id_perkiraan: string read Fid_perkiraan write Setid_perkiraan;
    property priode: string read Fpriode write Setpriode;
    property saldo_awal: Currency read Fsaldo_awal write Setsaldo_awal;
    property Update: Boolean read prosesUpdate;

  public
    constructor Create(AOwner: TComponent); override;
  end;
var
  FSaldoAwal: TFSaldoAwal;
implementation

uses
  UVariabel;

{ TFSaldoAwal }

procedure TFSaldoAwal.add(value: string);
begin
  FDataSaldo.Add(value);
end;

function TFSaldoAwal.cek_saldo_awal: Boolean;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, 'select * FROM tbl_saldo_periode as sa where ' +
    ' sa.periode = ' + QuotedStr(FPPeriode) + ' and sa.id_perkiraan = '
    + QuotedStr(FID_Perkiraan));
  //ShowMessage(IntToStr(pado.RecordCount));
  if (pado.RecordCount > 0) then
    Result := True
  else
    Result := False;
end;

function TFSaldoAwal.cek_sudah_ada_transaksi: Boolean;
var
  pado, pado1, pado2, pado3: TADOQuery;
begin
  Result := False;
  pado := TADOQuery.Create(nil);
  pado1 := TADOQuery.Create(nil);
  pado2 := TADOQuery.Create(nil);
  pado3 := TADOQuery.Create(nil);
  {if (FPOperasional = Fid_perkiraan) then
    Result := True
  else
  begin}
    fsql := 'select count(*) as total from tbl_detail_transaksi dp where  dp.id_perkiraan='
      + QuotedStr(Fid_perkiraan);
    view_ado(pado, fsql);
    fsql := 'select count(*) as total from tbl_detail_pengeluaran dp where  dp.id_perkiraan='
      + QuotedStr(Fid_perkiraan);
    view_ado(pado1, fsql);
    fsql := 'select count(*) as total from tbl_detail_pengeluaran dp where  dp.dari_perkiraan='
      + QuotedStr(Fid_perkiraan);
    view_ado(pado2, fsql); 
    fsql := 'select count(*) as total from tbl_peminjaman_operasional dp where  dp.ke='
      + QuotedStr(Fid_perkiraan) + ' or dp.dari=' + QuotedStr(Fid_perkiraan);
    view_ado(pado3, fsql);
    if (pado.FieldByName('total').AsInteger > 0) then
      Result := True
    else if (pado1.FieldByName('total').AsInteger > 0) then
      Result := True
    else if (pado2.FieldByName('total').AsInteger > 0) then
      Result := True
    else if (pado3.FieldByName('total').AsInteger > 0) then
      Result := True;
  //end;
  pado.Free;
  pado1.Free;
  pado2.Free;
  pado3.Free;
end;

constructor TFSaldoAwal.Create(AOwner: TComponent);
begin
  inherited;
  FDataSaldo := TStringList.Create;
end;

function TFSaldoAwal.getSimapan: Boolean;
begin
  ///ShowMessage(konversi_decimal(Fsaldo_awal));
  Result := False;
  if (cek_saldo_awal = False) then
  begin
    FDataSaldo.Clear;
    add(Fid_perkiraan);
    add(Fpriode);
    add(konversi_decimal(Fsaldo_awal));
    eksekusi_SPsql('sp_add_saldo_awal', FDataSaldo);
    Result := True;
  end;
end;

function TFSaldoAwal.prosesUpdate: Boolean;
begin
  Result := False;
  if (cek_sudah_ada_transaksi = False) then
  begin
    eksekusi_sql
      //ShowMessage
    ('update tbl_saldo_periode set saldo_awal=' + konversi_decimal(saldo_awal) +
      ' where periode=' + QuotedStr(FPPeriode) + ' and id_perkiraan=' +
      QuotedStr(Fid_perkiraan));
    Result := True;
  end;
end;

procedure TFSaldoAwal.Setid_perkiraan(const Value: string);
begin
  Fid_perkiraan := Value;
end;

procedure TFSaldoAwal.Setpriode(const Value: string);
begin
  Fpriode := Value;
end;

procedure TFSaldoAwal.Setsaldo_awal(const Value: Currency);
begin
  Fsaldo_awal := Value;
end;

end.

