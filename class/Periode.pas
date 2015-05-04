unit Periode;

interface

uses SysUtils, Classes, Dialogs, UKoneksi, ADODB;

type
  TFPeriode = class(TKoneksi)
  private
    FThn_Fiskal, FThn_Fiskal_Lama, FTgl_Mulai, FTgl_Akhir, FStatus: string;
    FBukaPeriode, FTutupPeriode: string;
    FDataPeriode: TStringList;
    FLine: Integer;
    function hapus: Boolean;
    function setSimpan: Boolean;
    procedure setStatus(const Value: string);
    procedure setTahunFiskal(const Value: string);
    procedure setTanggalAkhir(const Value: string);
    procedure setTanggalMulai(const Value: string);
    function setUbah: Boolean;
    procedure setAdd();
    procedure setTahunFiskalLama(const Value: string);
    function getBuka: Boolean;
    function getTutup: Boolean;
    procedure setLine(const Value: Integer);
  protected
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert: Boolean read setSimpan;
    property Update: Boolean read setUbah;
    property Delete: Boolean read hapus;
    property thn_fiskal: string write setTahunFiskal;
    property thn_fiskal_lama: string write setTahunFiskalLama;
    property tgl_mulai: string write setTanggalMulai;
    property tgl_akhir: string write setTanggalAkhir;
    property status_penutupan: string write setStatus;
    property line: Integer write setLine;
    property tutupPeriode: Boolean read getTutup;
    property bukaPeriode: Boolean read getBuka;
  end;
var
  FPeriode: TFPeriode;
implementation

{ TFPeriode }

constructor TFPeriode.Create(AOwner: TComponent);
begin
  inherited;
  FDataPeriode := TStringList.Create;
end;

function TFPeriode.getBuka: Boolean;
var
  line: Integer;
  AdoQry: TADOQuery;
begin
  try
    try
      AdoQry := nil;
      AdoQry := TADOQuery.Create(Self);
      AdoQry.Connection := ADOKoneksi;
      lihat_hasil(AdoQry,
        'select status_penutupan as status from tbl_periode where line=''' +
        IntToStr(FLine + 1) + '''');
      if (AdoQry.IsEmpty) or (AdoQry.FieldByName('status').AsString = 'False')
        then
      begin
        eksekusi_SPsql('sp_buka_periode', IntToStr(FLine));
        ADOKoneksi.createPeriode;
        Result := True;
      end
      else
        Result := False;
    finally
      AdoQry.Free;
    end;
  except
    Result := False;
  end;
end;

function TFPeriode.getTutup: Boolean;
var
  line: Integer;
  AdoQry: TADOQuery;
begin
  try
    try
      AdoQry := nil;
      AdoQry := TADOQuery.Create(Self);
      AdoQry.Connection := ADOKoneksi;
      lihat_hasil(AdoQry,
        'select status_penutupan as status from tbl_periode where thn_fiskal=' +
        QuotedStr(FThn_Fiskal));
      if not (AdoQry.IsEmpty) and
        (AdoQry.FieldByName('status').AsString = 'False') then
      begin
        eksekusi_SPsql('sp_tutup_periode', FThn_Fiskal);
        ADOKoneksi.createPeriode;
        Result := True;
      end
      else
        Result := False;
    finally
      AdoQry.Free;
    end;
  except
    Result := False;
  end;
end;

function TFPeriode.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_periode', FThn_Fiskal_Lama);
    Result := True;
  except
    ShowMessage('Gagal Hapus');
    Result := False;
  end;
end;

procedure TFPeriode.setAdd;
begin
  with FDataPeriode do
  begin
    Clear;
    Add(FThn_Fiskal);
    Add(FTgl_Mulai);
    Add(FTgl_Akhir);
  end;
end;

procedure TFPeriode.setLine(const Value: Integer);
begin
  FLine := Value;
end;

function TFPeriode.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_periode', FDataPeriode);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFPeriode.setStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TFPeriode.setTahunFiskal(const Value: string);
begin
  FThn_Fiskal := Value;
end;

procedure TFPeriode.setTahunFiskalLama(const Value: string);
begin
  FThn_Fiskal_Lama := Value;
end;

procedure TFPeriode.setTanggalAkhir(const Value: string);
begin
  FTgl_Akhir := Value;
end;

procedure TFPeriode.setTanggalMulai(const Value: string);
begin
  FTgl_Mulai := Value;
end;

function TFPeriode.setUbah: Boolean;
begin
  try
    setAdd;
    FDataPeriode.Add(FStatus);
    FDataPeriode.Add(FThn_Fiskal_Lama);
    eksekusi_SPsql('sp_update_periode', FDataPeriode);
    Result := True;
  except
    Result := False;
  end;
end;

end.

