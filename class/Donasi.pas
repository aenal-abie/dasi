unit Donasi;

interface
uses
  UKoneksi, DB, SysUtils, Classes, Dialogs, ADODB;

type
  TFDonasi = class(Tkoneksi)
  private
    FDataDonasi: TStringList;
    Fid_perkiraan: string;
    FkodeDonatur: string;
    Fjumlah: Currency;
    FStatus: string;
    procedure setAdd;
    function setHapus: Boolean;
    function setSimpan: Boolean;
    procedure Setid_perkiraan(const Value: string);
    procedure SetDonatur(const Value: string);
    procedure Setjumlah(const Value: Currency);
    procedure SetStatus(const Value: string);
    function ada_donasi: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Delete: Boolean read setHapus;
    property id_perkiraan: string read Fid_perkiraan write Setid_perkiraan;
    property Donatur: string read FkodeDonatur write SetDonatur;
    property Jumlah: Currency read Fjumlah write Setjumlah;
    property Status: string read FStatus write SetStatus;
    property AdaDonasi: Boolean read ada_donasi;

  end;
implementation

{ TFDonasi }

function TFDonasi.ada_donasi: Boolean;
var
  pado: TADOQuery;
begin
  Result := False;
  pado := TADOQuery.Create(nil);
  view_ado(pado, 'select * from tbl_donasi where tbl_donasi.kode_donatur=' +
    QuotedStr(FkodeDonatur));
  if (pado.RecordCount > 0) then
    Result := True;
  pado.Free;
end;

constructor TFDonasi.Create(AOwner: TComponent);
begin
  inherited;
  FDataDonasi := TStringList.Create;
end;

procedure TFDonasi.setAdd;
begin
  with FDataDonasi do
  begin
    Clear;
    Add(FkodeDonatur);
    Add(id_perkiraan);
    Add(CurrToStr(Jumlah));
    Add(Status);
  end;

end;

procedure TFDonasi.SetDonatur(const Value: string);
begin
  FkodeDonatur := Value;
end;

function TFDonasi.setHapus: Boolean;
begin
  Result := False;
  try
    eksekusi_SPsql('sp_del_donasi', FkodeDonatur);
    Result := True;
  except
    ShowMessage('Gagal Hapus Data');
    Result := False;
  end;

end;

procedure TFDonasi.Setid_perkiraan(const Value: string);
begin
  Fid_perkiraan := Value;
end;

procedure TFDonasi.Setjumlah(const Value: Currency);
begin
  Fjumlah := Value;
end;

function TFDonasi.setSimpan: Boolean;
begin
  Result := false;
  setAdd;
  eksekusi_SPsql('sp_add_donasi', FDataDonasi);
  Result := True;
end;

procedure TFDonasi.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

end.

