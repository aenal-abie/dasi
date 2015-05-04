unit Donatur;

interface
uses
  UKoneksi, DB, SysUtils, Classes, Dialogs;
type

  TFDonatur = class(Tkoneksi)
  private
    FKode: string;
    FNamaLengkap: string;
    FTempatLahir: string;
    FTanggalLahir: TDateTime;
    FSuamiIstri: string;
    FAlamatRumah: string;
    FTlpRumah: string;
    FHandphone: string;
    FSetiapTanggal: Byte;
    FCaraBayar: string;
    Fkantor: string;
    FJemput: string;
    FKodeAmil: string;
    FAlamatkantor: string;
    FKodeKab: string;
    FTlpKantor: string;
    FMulaiTahun: string;
    FMulaiBulan: string;
    FdataDonatur: TStringList;
    Fstate: string;
    Fkode_baru: string;
    Fjml_kemitraan: Double;
    Fkode_kec: String;
    FkeyBaru: string;
    procedure SetKode(const Value: string);
    procedure SetNamaLengkap(const Value: string);
    procedure SetTempatLahir(const Value: string);
    procedure SetTanggalLahir(const Value: TDateTime);
    procedure SetSuamiIstri(const Value: string);
    procedure SetAlamatRumah(const Value: string);
    procedure SetTlpRumah(const Value: string);
    procedure SetHandphone(const Value: string);
    procedure SetAlamatkantor(const Value: string);
    procedure SetCaraBayar(const Value: string);
    procedure SetJemput(const Value: string);
    procedure Setkantor(const Value: string);
    procedure SetKodeAmil(const Value: string);
    procedure SetKodeKab(const Value: string);
    procedure SetMulaiBulan(const Value: string);
    procedure SetMulaiTahun(const Value: string);
    procedure SetSetiapTanggal(const Value: Byte);
    procedure SetTlpKantor(const Value: string);
    function hapus(): Boolean;
    function getSimpan: Boolean;
    procedure setAdd;
    function getDelete: Boolean;
    procedure Setstate(const Value: string);
    function setUpdate: Boolean;
    function new_kode: string;
    procedure Setjml_kemitraan(const Value: Double);
    procedure Setkode_kec(const Value: String);
    function getTotal: Integer;
    procedure SetkeyBaru(const Value: string);

  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read getSimpan;
    property Delete: Boolean read getDelete;
    property Update: Boolean read setUpdate;
    property state: string read Fstate write Setstate;
    property kodeBaru: string read Fkode_baru;
    property Kode: string read FKode write SetKode;
    property NamaLengkap: string read FNamaLengkap write SetNamaLengkap;
    property TempatLahir: string read FTempatLahir write SetTempatLahir;
    property TanggalLahir: TDateTime read FTanggalLahir write SetTanggalLahir;
    property SuamiIstri: string read FSuamiIstri write SetSuamiIstri;
    property AlamatRumah: string read FAlamatRumah write SetAlamatRumah;
    property TlpRumah: string read FTlpRumah write SetTlpRumah;
    property Handphone: string read FHandphone write SetHandphone;
    property kantor: string read Fkantor write Setkantor;
    property Alamatkantor: string read FAlamatkantor write SetAlamatkantor;
    property TlpKantor: string read FTlpKantor write SetTlpKantor;
    property MulaiBulan: string read FMulaiBulan write SetMulaiBulan;
    property MulaiTahun: string read FMulaiTahun write SetMulaiTahun;
    property CaraBayar: string read FCaraBayar write SetCaraBayar;
    property Jemput: string read FJemput write SetJemput;
    property SetiapTanggal: Byte read FSetiapTanggal write SetSetiapTanggal
      default 1;
    property KodeKab: string read FKodeKab write SetKodeKab;
    property KodeAmil: string read FKodeAmil write SetKodeAmil;
    property Jmlkemitraan: Double read Fjml_kemitraan write Setjml_kemitraan;
    property kode_kec:String read Fkode_kec write Setkode_kec;
    property JumlahData:Integer read getTotal;
    property keyBaru:string write SetkeyBaru;
  end;
var
  FDonatur: TFDonatur;

implementation

{ TFDonatur }

constructor TFDonatur.Create(AOwner: TComponent);
begin
  inherited;
  FdataDonatur := TStringList.Create;
end;

function TFDonatur.getDelete: Boolean;
begin
  Result := False;
  try
    eksekusi_SPsql('sp_del_donatur', FKode);
    Result := True;
  except
    ShowMessage('Gagal Hapus Data');
    Result := False;
  end;

end;

function TFDonatur.getSimpan: Boolean;
begin
  try
    setAdd();
    FdataDonatur.Add(new_kode);
    eksekusi_SPsql('sp_add_donatur', FdataDonatur);
    Result := True;
  except
    Result := false;
  end;
end;

function TFDonatur.getTotal: Integer;
begin
  Self.nama_tabel:='tbl_donatur';
  Result:=JumlahRecord;
end;

function TFDonatur.hapus: Boolean;
begin
  ShowMessage(FKode);
  Result := False;
  try
    eksekusi_SPsql('sp_del_donatur', FKode);
    Result := True;
  except
    MessageDlg('Gagal Hapus Data', mtWarning, [mbOK], 0);
    Result := False;
  end;

end;

function TFDonatur.new_kode: string;
begin
  Fkode_baru := eksekusi_FCsql('fc_getkode_donatur',FkeyBaru);
  Result := Fkode_baru;
end;

procedure TFDonatur.setAdd;
begin
  with FdataDonatur do
  begin
    Clear;
    Add(FNamaLengkap);
    Add(FTempatLahir);
    Add(FormatDateTime('YYYY-MM-DD', FTanggalLahir));
    Add(FSuamiIstri);
    Add(FAlamatRumah);
    Add(FTlpRumah);
    Add(FHandphone);
    Add(Fkantor);
    Add(FAlamatkantor);
    Add(FTlpKantor);
    Add(FMulaiBulan);
    Add(FMulaiTahun);
    Add(FCaraBayar);
    Add(FJemput);
    Add(IntToStr(FSetiapTanggal));
    Add(FKodeKab);
    Add(FloatToStr(Fjml_kemitraan));
    Add(kode_kec);
  end;
end;

procedure TFDonatur.SetAlamatkantor(const Value: string);
begin
  FAlamatkantor := Value;
end;

procedure TFDonatur.SetAlamatRumah(const Value: string);
begin
  FAlamatRumah := Value;
end;

procedure TFDonatur.SetCaraBayar(const Value: string);
begin
  FCaraBayar := Value;
end;

procedure TFDonatur.SetHandphone(const Value: string);
begin
  FHandphone := Value;
end;

procedure TFDonatur.SetJemput(const Value: string);
begin
  FJemput := Value;
end;

procedure TFDonatur.Setjml_kemitraan(const Value: Double);
begin
  Fjml_kemitraan := Value;
end;

procedure TFDonatur.Setkantor(const Value: string);
begin
  Fkantor := Value;
end;

procedure TFDonatur.SetkeyBaru(const Value: string);
begin
  FkeyBaru := Value;
end;

procedure TFDonatur.SetKode(const Value: string);
begin
  FKode := Value;
end;

procedure TFDonatur.SetKodeAmil(const Value: string);
begin
  FKodeAmil := Value;
end;

procedure TFDonatur.SetKodeKab(const Value: string);
begin
  FKodeKab := Value;
end;

procedure TFDonatur.Setkode_kec(const Value: String);
begin
  Fkode_kec := Value;
end;

procedure TFDonatur.SetMulaiBulan(const Value: string);
begin
  FMulaiBulan := Value;
end;

procedure TFDonatur.SetMulaiTahun(const Value: string);
begin
  FMulaiTahun := Value;
end;

procedure TFDonatur.SetNamaLengkap(const Value: string);
begin
  FNamaLengkap := Value;
end;

procedure TFDonatur.SetSetiapTanggal(const Value: Byte);
begin
  FSetiapTanggal := Value;
end;

procedure TFDonatur.Setstate(const Value: string);
begin
  Fstate := Value;
end;

procedure TFDonatur.SetSuamiIstri(const Value: string);
begin
  FSuamiIstri := Value;
end;

procedure TFDonatur.SetTanggalLahir(const Value: TDateTime);
begin
  FTanggalLahir := Value;
end;

procedure TFDonatur.SetTempatLahir(const Value: string);
begin
  FTempatLahir := Value;
end;

procedure TFDonatur.SetTlpKantor(const Value: string);
begin
  FTlpKantor := Value;
end;

procedure TFDonatur.SetTlpRumah(const Value: string);
begin
  FTlpRumah := Value;
end;

function TFDonatur.setUpdate: Boolean;
begin
  try
    setAdd;
    FdataDonatur.Add(FKode);
    eksekusi_SPsql('sp_update_donatur', FdataDonatur);
    Result := True;
  except
    Result := false;
  end;

end;

end.

