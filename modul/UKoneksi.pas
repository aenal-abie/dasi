unit UKoneksi;

interface

uses
  ADODB, DB, Dialogs, Forms, SysUtils, cxGrid, Classes, IniFiles,
  Graphics;

type
  TKoneksi = class(TADOConnection)
  private
    FADOQuery: TADOQuery;
    Fhost, FDSN, Fdatabase, FUserName, Fpassword: string;
    FPort: Integer;
    FPeriode: string;
    Ftgl_periodeAwal: TDateTime;
    Ftgl_peridodeakhir: TDateTime;
    function buat_koneksi(): Boolean;
    procedure setFHost(const host: string);
    procedure setFDSN(const dsn: string);
    procedure setFDatabase(const database: string);
    procedure setFUsername(const username: string);
    procedure setFPassword(const pass: string);
    function getHost: string;
    function getDSN: string;
    procedure SetPort(const Value: Integer);
    function getADOQuery: TADOQuery;
    procedure setADOQuery(const Value: TADOQuery);
    function getRecord: Integer;
    function cek_versi_app: string;
  protected
    // list data
    FData: TStringList;
    nama_tabel, fsql: string;
    procedure eksekusi_SPsql(spName: string; Parameter: TStringList); overload;
    procedure eksekusi_SPsql(spName: string; Parameter: string); overload;
    procedure eksekusi_SPsql(spName: string); overload;
    function eksekusi_FCsql(fcName, Parameter: string): string; overload;
    function eksekusi_FCsql(fcName: string; Parameter: TStringList): string;
      overload;
    function konversi_decimal(str: Real): string;
  public
    constructor Create(AOwner: TComponent); override;
    procedure eksekusi_sql(sql: string);
    procedure createPeriode();
    procedure refresh_AdoQuery(var AdoQry: TADOQuery);
    procedure lihat_hasil(ado: TADOQuery; qry: string); overload;
    procedure view_ado(var ado: TADOQuery; qry: string);
    function Lihat_Hasil(sql: string): string; overload;
    procedure Mulai_Transaksi;
    procedure Selesai_Transaksi;
    procedure Batalkan_Transaksi;
  published
    property myKoneksi: Boolean read buat_koneksi;
    property Port: Integer read FPort write SetPort;
    property myip: string read getHost write setFHost;
    property mydsn: string read getDSN write setFDSN;
    property myDatabase: string read Fdatabase write setFDatabase;
    property myUsername: string read FUserName write setFUsername;
    property myPassword: string read Fpassword write setFPassword;
    property ADOQuery: TADOQuery read getADOQuery write setADOQuery;
    property JumlahRecord: Integer read getRecord;
    property Versi: string read cek_versi_app;
  end;

var
  ADOKoneksi: TKoneksi;
implementation

uses
  UVariabel;

function TKoneksi.buat_koneksi(): Boolean;
begin
  Result := False;
  Self.Connected := False;
  self.ConnectionString := 'Provider=MSDASQL.1;Password=' + self.Fpassword +
    ';Persist Security Info=True;User ID=' + FUserName +
    ';Extended Properties="DSN=' + FDSN + ';SERVER=' + Fhost + ';UID=' +
    FUserName + ';DATABASE=' + Fdatabase + ';PORT=3306"';
  Self.LoginPrompt := False;
  try
    Self.Connected := True;
    Result := True;
  except
    begin
      MessageDlg('KONEKSI GAGAL ' + #187 + #13 +
        'Tidak dapat terhubung ke server : ' +
        Fhost + #13 + 'Silahkan tutup aplikasi dan buka kembali'
        , mtError, [mbOK], 0);
      {MessageBox(Handle, PChar('Koneksi Terputus :' + #13 +
        'Tidak dapat terhubung ke server : ' +
        ADOKoneksi.myip + #13 + 'Silahkan tutup aplikasi dan buka kembali'),
        'Koneksi', MB_ICONERROR + MB_OK); }
      //Application.Terminate
    end;
  end;
end;

procedure TKoneksi.setFHost(const host: string);
begin
  Fhost := host;
end;

procedure TKoneksi.setFDatabase(const database: string);
begin
  Self.Fdatabase := database;
end;

procedure TKoneksi.setFDSN(const dsn: string);
begin
  Self.FDSN := dsn;
end;

procedure TKoneksi.setFPassword(const pass: string);
begin
  Self.Fpassword := pass;
end;

procedure TKoneksi.setFUsername(const username: string);
begin
  Self.FUserName := username;
end;

function TKoneksi.getHost: string;
begin
  Result := Fhost;
end;

function TKoneksi.getDSN: string;
begin
  Result := FDSN;
end;

procedure TKoneksi.eksekusi_SPsql(spName: string; Parameter: TStringList);
var
  ado: TADOQuery;
  fparameter: string;
  loop: Byte;
begin
  ado := TADOQuery.Create(Self);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  if (Parameter = nil) then
    Parameter := TStringList.Create;
  for loop := 0 to Parameter.Count - 1 do
  begin
    fparameter := fparameter + QuotedStr(Parameter.Strings[loop]);
    if (loop < Parameter.Count - 1) then
      fparameter := fparameter + ',';
  end;

  with ado do
  begin
    Close;
    SQL.Clear;
    SQL.Add('CALL ' + spName + '(' + fparameter + ')');
    //ShowMessage(SQL.Text);
    ExecSQL;
  end;
  ado.EnableControls;
  ado.Free;
end;

procedure TKoneksi.eksekusi_SPsql(spName, Parameter: string);
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(Self);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  with ado do
  begin
    Close;
    SQL.Clear;
    SQL.Add('CALL ' + spName + '(' + QuotedStr(Parameter) + ')');
    ExecSQL;
    //ShowMessage(SQL.Text);
  end;
  ado.EnableControls;
  ado.Free;
end;

procedure TKoneksi.eksekusi_SPsql(spName: string);
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(Self);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  with ado do
  begin
    Close;
    SQL.Clear;
    SQL.Add('CALL ' + spName);
    ExecSQL;
    //ShowMessage(SQL.Text);
  end;
  ado.EnableControls;
  ado.Free;
end;

function TKoneksi.eksekusi_FCsql(fcName, Parameter: string): string;
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(Self);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  with ado do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + fcName + '(' + QuotedStr(Parameter) + ') AS value');
    Open;
    Result := Fieldbyname('value').AsString;
    //ShowMessage(Fieldbyname('value').AsString);
  end;
  ado.EnableControls;
  ado.Free;
end;

constructor TKoneksi.Create(AOwner: TComponent);
var
  ini: TIniFile;
  path: string;
begin
  FData := TStringList.Create;
  inherited;
  path := GetCurrentDir;
  ini := TIniFile.Create(path + '\config.ini');
  try
    Fhost := ini.ReadString('database', 'host', '127.0.0.1');
    FDSN := ini.ReadString('database', 'dsn', 'dasi_ntb');
    FUserName := ini.ReadString('database', 'username', 'root');
    Fpassword := ini.ReadString('database', 'password', '');
    Fdatabase := ini.ReadString('database', 'dbname', 'dasi_ntb');
    FPort := ini.ReadInteger('database', 'port', 3306);
    FPBug := ini.ReadInteger('application', 'bug', 0);
    FPReport := ini.ReadInteger('application', 'report', 0);
  finally
    ini.Free;
  end;
end;

procedure TKoneksi.SetPort(const Value: Integer);
begin
  FPort := Value;
end;

procedure TKoneksi.createPeriode;
var
  PAdoQry: TADOQuery;
begin
  try
    PAdoQry := TADOQuery.Create(Self);
    PAdoQry.DisableControls;
    PAdoQry.Connection := ADOKoneksi;
    lihat_hasil(PAdoQry,
      'select*from tbl_periode where status_penutupan=''False'' order by thn_fiskal');
    PAdoQry.First;
    FPPeriode := PAdoQry.FieldValues['thn_fiskal'];
    FPPeriodeAwal := PAdoQry.FieldByName('tgl_mulai').AsDateTime;
    FPPeriodeAkhir := PAdoQry.FieldByName('tgl_akhir').AsDateTime;
  finally
    PAdoQry.EnableControls;
    PAdoQry.Free;
  end;

end;

procedure TKoneksi.lihat_hasil(ado: TADOQuery; qry: string);
begin
  if (ado = nil) then
    ado := TADOQuery.Create(Application);
  ado.Connection := ADOKoneksi;
  ado.DisableControls;
  ado.Close;
  ado.SQL.Clear;
  ado.SQL.Add(qry);
  ado.Open;
  ado.EnableControls;
end;

function TKoneksi.getADOQuery: TADOQuery;
begin
  Result := FADOQuery;
end;

procedure TKoneksi.setADOQuery(const Value: TADOQuery);
begin
  FADOQuery := Value;
end;

procedure TKoneksi.refresh_AdoQuery(var AdoQry: TADOQuery);
begin
  AdoQry.DisableControls;
  AdoQry.Close;
  AdoQry.Open;
  AdoQry.EnableControls;
end;

procedure TKoneksi.view_ado(var ado: TADOQuery; qry: string);
begin
  if (ado = nil) then
    ado := TADOQuery.Create(Application);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  ado.Close;
  ado.SQL.Clear;
  ado.SQL.Add(qry);
  ado.Open;
  ado.EnableControls;
end;

function TKoneksi.eksekusi_FCsql(fcName: string; Parameter: TStringList):
  string;
var
  ado: TADOQuery;
  fparameter: string;
  loop: Byte;
begin
  ado := TADOQuery.Create(Self);
  ado.DisableControls;
  ado.Connection := ADOKoneksi;
  if (Parameter = nil) then
    Parameter := TStringList.Create;
  for loop := 0 to Parameter.Count - 1 do
  begin
    fparameter := fparameter + QuotedStr(Parameter.Strings[loop]);
    if (loop < Parameter.Count - 1) then
      fparameter := fparameter + ',';
  end;

  with ado do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT ' + fcName + '(' + fparameter + ') AS value');
    Open;
    Result := Fieldbyname('value').AsString;
    //ShowMessage(Fieldbyname('value').AsString);
  end;
  ado.EnableControls;
  ado.Free;
end;

procedure TKoneksi.eksekusi_sql(sql: string);
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(Application);
  if (Assigned(ado)) then
  begin
    ado.Connection := ADOKoneksi;
    ado.DisableControls;
    ado.Close;
    ado.SQL.Clear;
    ado.SQL.Add(sql);
    ado.ExecSQL;
    ado.EnableControls;
  end;
end;

function TKoneksi.lihat_hasil(sql: string): string;
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := ADOKoneksi;
  view_ado(ado, sql);
  if (ado.RecordCount > 0) then
    Result := ado.FieldByname('hasil').AsString
  else
    Result := '';
  ado.Free;
end;

function TKoneksi.getRecord: Integer;
var
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := ADOKoneksi;
  //ShowMessage(nama_tabel);
  view_ado(ado, 'select * from ' + nama_tabel);
  Result := ado.RecordCount;
  ado.Free;
end;

function TKoneksi.cek_versi_app: string;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(nil);
  view_ado(pado,
    'select `value` from tbl_setting where  setting_name ="versi" ');
  Result := pado.FieldByName('value').AsString;
  FreeAndNil(pado);
end;

procedure TKoneksi.Mulai_Transaksi;
begin
  eksekusi_sql('START TRANSACTION');
end;

procedure TKoneksi.Selesai_Transaksi;
begin
  eksekusi_sql('COMMIT');
end;

procedure TKoneksi.Batalkan_Transaksi;
begin
  eksekusi_sql('ROLLBACK');
end;

function TKoneksi.konversi_decimal(str: Real): string;
begin
  Result := StringReplace(FloatToStr(str), ',', '.', [rfReplaceAll,
    rfIgnoreCase])
end;

end.
