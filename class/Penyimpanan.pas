unit Penyimpanan;

interface
uses
  UKoneksi, DB, SysUtils, Classes, Dialogs, ADODB;

type
  TFPenyimpanan = class(Tkoneksi)
  private
    Fkode: Integer;
    FDataPenyimpanan: TStringList;
    Ftempat: string;
    Fsaldo: Currency;
    Ftanggal_pengakuan: TDateTime;
    Fakumulasi: String;
    Fno_rek: String;
    procedure setAdd;
    function setHapus: Boolean;
    function setSimpan: Boolean;
    function setUpdate: Boolean;
    procedure Setkode(const Value: Integer);
    procedure Settempat(const Value: string);
    procedure Setsaldo(const Value: Currency);
    procedure simpan_saldo_awal;
    function boleh_update: Boolean;
    procedure Settanggal_pengakuan(const Value: TDateTime);
    procedure Setakumulasi(const Value: String);
    procedure Setno_rek(const Value: String);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUpdate;
    property Delete: Boolean read setHapus;
    property kode: Integer read Fkode write Setkode;
    property tempat: string read Ftempat write Settempat;
    property saldo: Currency read Fsaldo write Setsaldo;
    property no_rek:String read Fno_rek write Setno_rek;
    property tanggal_pengakuan:TDateTime read Ftanggal_pengakuan write Settanggal_pengakuan;
    property akumulasi:String read Fakumulasi write Setakumulasi;

  end;
implementation

{ TFPenyimpanan }

function TFPenyimpanan.boleh_update: Boolean;
var
  pado: TADOQuery;
begin
  Result := True;
  pado := TADOQuery.Create(nil);
  view_ado(pado,
    'select tbl_saldo_harian.tgl from tbl_saldo_harian where tbl_saldo_harian.kode_penyimpanan=' +
    QuotedStr(IntToStr(Fkode)));
  if (pado.RecordCount > 1) then
    Result := False;

end;

constructor TFPenyimpanan.Create(AOwner: TComponent);
begin
  inherited;
  FDataPenyimpanan := TStringList.Create;
end;

procedure TFPenyimpanan.setAdd;
begin
  with FDataPenyimpanan do
  begin
    Clear;
    Add(Ftempat);
    Add(akumulasi);
    Add(no_rek);
    //Add(CurrToStr(Fsaldo));
  end;

end;

procedure TFPenyimpanan.Setakumulasi(const Value: String);
begin
  Fakumulasi := Value;
end;

function TFPenyimpanan.setHapus: Boolean;
begin
  Result := False;
  try
    Mulai_Transaksi;
    eksekusi_SPsql('sp_del_penyimpanan', IntToStr(FKode));
    Result := True;
    Selesai_Transaksi;
  except
    Batalkan_Transaksi;
    ShowMessage('Gagal Hapus Data');
    Result := False;
  end;

end;

procedure TFPenyimpanan.Setkode(const Value: Integer);
begin
  Fkode := Value;
end;

procedure TFPenyimpanan.Setno_rek(const Value: String);
begin
  Fno_rek := Value;
end;

procedure TFPenyimpanan.Setsaldo(const Value: Currency);
begin
  Fsaldo := Value;
end;

function TFPenyimpanan.setSimpan: Boolean;
begin
  Result := false;
  setAdd;
  eksekusi_SPsql('sp_add_penyimpanan', FDataPenyimpanan);
  simpan_saldo_awal;
  Result := True;
end;

procedure TFPenyimpanan.Settanggal_pengakuan(const Value: TDateTime);
begin
  Ftanggal_pengakuan := Value;
end;

procedure TFPenyimpanan.Settempat(const Value: string);
begin
  Ftempat := Value;
end;

function TFPenyimpanan.setUpdate: Boolean;
begin
  begin
    try
      setAdd;
      FDataPenyimpanan.Add(IntToStr(FKode));
      eksekusi_SPsql('sp_update_penyimpanan', FDataPenyimpanan);
      if (boleh_update = True) then
        eksekusi_sql
          //ShowMessage
        ('update tbl_saldo_harian set saldo=' +
          QuotedStr(konversi_decimal(Fsaldo)) + ', tgl='+QuotedStr(FormatDateTime('YYYY-MM-DD',Ftanggal_pengakuan))+' where kode_penyimpanan=' +
            QuotedStr(IntToStr(Fkode)));
      Result := True;
    except
      Result := false;
    end;
  end;
end;

procedure TFPenyimpanan.simpan_saldo_awal;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(nil);
  view_ado(pado,
    'select kode_penyimpanan from tbl_penyimpanan  order by kode_penyimpanan desc limit 1');
  eksekusi_sql('insert  into tbl_saldo_harian set tgl=' +
    QuotedStr(FormatDateTime('YYYY-MM-DD', tanggal_pengakuan)) +
    ', kode_penyimpanan=' +
    QuotedStr(pado.FieldByName('kode_penyimpanan').AsString) +
    ',saldo=' + QuotedStr(konversi_decimal(saldo)));
end;

end.

