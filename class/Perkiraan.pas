unit Perkiraan;

interface

uses SysUtils, UKoneksi, Dialogs, Classes, ADODB;

type
  TFPerkiraan = class(TKoneksi)
  private
    FKode_Kelompok, FID_Perkiraan, FID_Perkiraan_lama, FKode_Header,
      FNama_Perkiraan, FLevel: string;
    FSaldo: Double;
    FDataPerkiraan: TStringList;
    Fsingkatan: string;
    Fheader_lama: string;
    Falokasi_amil: Double;
    Fprioritas: Integer;
    procedure setIDPerkiraan(const Value: string);
    procedure setKodeKelompok(const Value: string);
    procedure setLevel(const Value: string);
    procedure setNamaPerkiraan(const Value: string);
    procedure setAdd();
    function hapus: Boolean;
    function setSimpan: Boolean;
    function setUbah: Boolean;
    procedure setKodeHeader(const Value: string);
    procedure setIDPerkiraanLama(const Value: string);
    procedure Setsaldo(const Value: Double);
    procedure Setsingkatan(const Value: string);
    procedure Setheader_lama(const Value: string);
    procedure Setalokasi_amil(const Value: Double);
    procedure Setprioritas(const Value: Integer);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    procedure createIDPerkiraan(header, lvl: string);
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property id_perkiraan: string read FID_Perkiraan write setIDPerkiraan;
    property id_perkiraan_lama: string write setIDPerkiraanLama;
    property kd_header: string write setKodeHeader;
    property kd_kel: string write setKodeKelompok;
    property nama_perkiraan: string write setNamaPerkiraan;
    property level: string write setLevel;
    property saldo: Double read Fsaldo write Setsaldo;
    property singkatan: string read Fsingkatan write Setsingkatan;
    property header_lama: string read Fheader_lama write Setheader_lama;
    property alokasi_amil: Double read Falokasi_amil write Setalokasi_amil;
    property prioritas: Integer read Fprioritas write Setprioritas;
  end;

implementation

{ TFPerkiraan }

constructor TFPerkiraan.Create(AOwner: TComponent);
begin
  inherited;
  FDataPerkiraan := TStringList.Create;
end;

procedure TFPerkiraan.createIDPerkiraan(header, lvl: string);
var
  AdoQry: TADOQuery;
  kode: string;
begin
  AdoQry := nil;
  AdoQry := TADOQuery.Create(Self);
  AdoQry.Connection := ADOKoneksi;
  lihat_hasil(AdoQry,
    'select coalesce(max(convert(right(id_perkiraan,2), unsigned integer)),0) as kode from tbl_perkiraan ' +
    'where kd_header=''' + header + ''' and level=''' + lvl + '''');
  if lvl = 'Header' then
  begin
    //ShowMessage(AdoQry.FieldByName('kode').AsString);
    kode := IntToStr(AdoQry.FieldByName('kode').AsInteger + 1)
  end
  else if (Length(header) > 1) then
    kode := header + '-' + formatfloat('00',
      AdoQry.FieldByName('kode').AsInteger +
      1)
  else
    kode := header + '-' + formatfloat('000',
      AdoQry.FieldByName('kode').AsInteger +
      1)
      ;
  setIDPerkiraan(kode);
  AdoQry.Free;
end;

function TFPerkiraan.hapus: Boolean;
begin
  try
    Mulai_Transaksi;
    eksekusi_SPsql('sp_del_perkiraan', FID_Perkiraan);
    Result := True;
    Selesai_Transaksi;
  except
    Batalkan_Transaksi;
    Result := False;
  end;
end;

procedure TFPerkiraan.setAdd;
begin
  with FDataPerkiraan do
  begin
    Clear;
    Add(FID_Perkiraan);
    Add(FKode_Kelompok);
    Add(FKode_Header);
    Add(FNama_Perkiraan);
    Add(FLevel);
    Add(singkatan);
    Add(konversi_decimal(alokasi_amil));
    Add(IntToStr(prioritas));
  end;
end;

procedure TFPerkiraan.Setalokasi_amil(const Value: Double);
begin
  Falokasi_amil := Value;
end;

procedure TFPerkiraan.Setheader_lama(const Value: string);
begin
  Fheader_lama := Value;
end;

procedure TFPerkiraan.setIDPerkiraan(const Value: string);
begin
  FID_Perkiraan := Value;
end;

procedure TFPerkiraan.setIDPerkiraanLama(const Value: string);
begin
  FID_Perkiraan_lama := Value;
end;

procedure TFPerkiraan.setKodeHeader(const Value: string);
begin
  FKode_Header := Value;
end;

procedure TFPerkiraan.setKodeKelompok(const Value: string);
begin
  FKode_Kelompok := Value;
end;

procedure TFPerkiraan.setLevel(const Value: string);
begin
  FLevel := Value;
end;

procedure TFPerkiraan.setNamaPerkiraan(const Value: string);
begin
  FNama_Perkiraan := Value;
end;

procedure TFPerkiraan.Setprioritas(const Value: Integer);
begin
  Fprioritas := Value;
end;

procedure TFPerkiraan.Setsaldo(const Value: Double);
begin
  Fsaldo := Value;
end;

function TFPerkiraan.setSimpan: Boolean;
begin
  Result := False;
  setAdd;
  eksekusi_SPsql('sp_add_perkiraan', FDataPerkiraan);
  Result := True;
end;

procedure TFPerkiraan.Setsingkatan(const Value: string);
begin
  Fsingkatan := Value;
end;

function TFPerkiraan.setUbah: Boolean;
begin
  Result := False;
  setAdd;
  FDataPerkiraan.Add(FID_Perkiraan_lama);
  eksekusi_SPsql('sp_update_perkiraan', FDataPerkiraan);
  Result := True;
end;

end.

