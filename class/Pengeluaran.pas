unit Pengeluaran;

interface
uses
  UKoneksi, DB, SysUtils, Classes, Dialogs, ADODB;

type
  TFPengeluaran = class(Tkoneksi)
  private
    Fkode_pengeluaran: string;
    FdataPengeluaran: TStringList;
    Ftanggal: TDateTime;
    Fid_perkiraan: string;
    Ftotal: Double;
    Fketerangan: string;
    Fid_user: Integer;
    Fkode_kab: string;
    procedure Setkode_pengeluaran(const Value: string);
    procedure Settanggal(const Value: TDateTime);
    procedure Setid_perkiraan(const Value: string);
    procedure Settotal(const Value: Double);
    procedure Setketerangan(const Value: string);
    function getSimpan: Boolean;
    procedure setAdd;
    procedure Setid_user(const Value: Integer);
    function setUpdate: Boolean;
    function setHapus: Boolean;
    procedure Setkode_kab(const Value: string);
    function getSaldo: Currency;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read getSimpan;
    property Update: Boolean read setUpdate;
    property Delete: Boolean read setHapus;
    property kode_pengeluaran: string read Fkode_pengeluaran write
      Setkode_pengeluaran;
    property tanggal: TDateTime read Ftanggal write Settanggal;
    property id_perkiraan: string read Fid_perkiraan write Setid_perkiraan;
    property total: Double read Ftotal write Settotal;
    property keterangan: string read Fketerangan write Setketerangan;
    property id_user: Integer read Fid_user write Setid_user;
    property kode_kab: string read Fkode_kab write Setkode_kab;
    property Saldo: Currency read getSaldo;
  end;

  TFDetailPengeluaran = class(Tkoneksi)
  private
    Fkode_pengeluaran: string;
    Fsub_total: Currency;
    Fketerangan: string;
    Fid_perkiraan: string;
    FdataDetail: TStringList;
    Fpenerima_manfaat: Integer;
    Fkode_donatur: String;
    Fkode_kab: String;
    Fdari_perkiraan: String;
    procedure setAdd;
    function setHapus: Boolean;
    procedure Setkode_pengeluaran(const Value: string);
    procedure Setid_perkiraan(const Value: string);
    procedure Setketerangan(const Value: string);
    procedure Setsub_total(const Value: Currency);
    function getSimpan: Boolean;
    procedure Setpenerima_manfaat(const Value: Integer);
    procedure Setkode_donatur(const Value: String);
    procedure Setkode_kab(const Value: String);
    procedure Setdari_perkiraan(const Value: String);

  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read getSimpan;
    property Delete: Boolean read setHapus;
    property kode_pengeluaran: string read Fkode_pengeluaran write
      Setkode_pengeluaran;
    property id_perkiraan: string read Fid_perkiraan write Setid_perkiraan;
    property dari_perkiraan:String read Fdari_perkiraan write Setdari_perkiraan;
    property sub_total: Currency read Fsub_total write Setsub_total;
    property keterangan: string read Fketerangan write Setketerangan;
    property penerima_manfaat:Integer read Fpenerima_manfaat write Setpenerima_manfaat;
    property kode_donatur:String read Fkode_donatur write Setkode_donatur;
    property kode_kab:String read Fkode_kab write Setkode_kab;
  end;

var
  FPengeluaran: TFPengeluaran;
  FDetailPengeluaran: TFDetailPengeluaran;
implementation

uses
  UVariabel;

{ TFPengeluaran }

constructor TFPengeluaran.Create(AOwner: TComponent);
begin
  inherited;
  FdataPengeluaran := TStringList.Create;
end;

function TFPengeluaran.getSaldo: Currency;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select saldo_penyaluran from tbl_saldo_penyaluran where id_perkiraan ="' +
    Fid_perkiraan + '" ');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('saldo_penyaluran').AsFloat
  else
    Result := 0;

end;

function TFPengeluaran.getSimpan: Boolean;
begin
  Result := False;
  setAdd();
  eksekusi_SPsql('sp_add_pengeluaran', FdataPengeluaran);
  Result := True;
end;

procedure TFPengeluaran.setAdd;
begin
  with FdataPengeluaran do
  begin
    Clear;
    Add(Fkode_pengeluaran);
    Add(FormatDateTime('YYYY-MM-DD HH:MM:SS', Ftanggal));
    Add(FloatToStr(Ftotal));
    Add(IntToStr(Fid_user));
    Add(FPPeriode);
  end;
end;

function TFDetailPengeluaran.setHapus: Boolean;
begin
  Result:=False;
  eksekusi_SPsql('sp_del_detail_pengeluaran', Fkode_pengeluaran);
  Result := True;
end;

function TFPengeluaran.setHapus: Boolean;
begin
  Result := False;
  eksekusi_SPsql('sp_del_pengeluaran', Fkode_pengeluaran);
  Result := True;
end;


procedure TFPengeluaran.Setid_perkiraan(const Value: string);
begin
  Fid_perkiraan := Value;
end;

procedure TFPengeluaran.Setid_user(const Value: Integer);
begin
  Fid_user := Value;
end;

procedure TFPengeluaran.Setketerangan(const Value: string);
begin
  Fketerangan := Value;
end;

procedure TFPengeluaran.Setkode_kab(const Value: string);
begin
  Fkode_kab := Value;
end;

procedure TFPengeluaran.Setkode_pengeluaran(const Value: string);
begin
  Fkode_pengeluaran := Value;
end;

procedure TFPengeluaran.Settanggal(const Value: TDateTime);
begin
  Ftanggal := Value;
end;

procedure TFPengeluaran.Settotal(const Value: Double);
begin
  Ftotal := Value;
end;

function TFPengeluaran.setUpdate: Boolean;
begin
  Result := False;
  setAdd;
  eksekusi_SPsql('sp_udapte_pengeluaran', FdataPengeluaran);
  Result := True;
end;

{ TFDetailPengeluaran }

constructor TFDetailPengeluaran.Create(AOwner: TComponent);
begin
  inherited;
  FdataDetail := TStringList.Create;
end;

function TFDetailPengeluaran.getSimpan: Boolean;
begin
  Result := False;
  setAdd();
  eksekusi_SPsql('sp_add_detail_pengeluaran', FdataDetail);
  Result := True;
end;

procedure TFDetailPengeluaran.setAdd;
begin
  with FdataDetail do
  begin
    Clear;
    Add(Fkode_pengeluaran);
    Add(Fid_perkiraan);
    Add(Fdari_perkiraan);
    Add(FloatToStr(Fsub_total));
    Add(IntToStr(Fpenerima_manfaat));
    Add(Fketerangan);
    Add(Fkode_kab);
    Add(Fkode_donatur);
  end;

end;

procedure TFDetailPengeluaran.Setid_perkiraan(const Value: string);
begin
  Fid_perkiraan := Value;
end;

procedure TFDetailPengeluaran.Setketerangan(const Value: string);
begin
  Fketerangan := Value;
end;

procedure TFDetailPengeluaran.Setkode_pengeluaran(const Value: string);
begin
  Fkode_pengeluaran := Value;
end;


procedure TFDetailPengeluaran.Setsub_total(const Value: Currency);
begin
  Fsub_total := Value;
end;


procedure TFDetailPengeluaran.Setpenerima_manfaat(const Value: Integer);
begin
  Fpenerima_manfaat := Value;
end;

procedure TFDetailPengeluaran.Setkode_donatur(const Value: String);
begin
  Fkode_donatur := Value;
end;

procedure TFDetailPengeluaran.Setkode_kab(const Value: String);
begin
  Fkode_kab := Value;
end;

procedure TFDetailPengeluaran.Setdari_perkiraan(const Value: String);
begin
  Fdari_perkiraan := Value;
end;

end.

