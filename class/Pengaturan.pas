unit Pengaturan;

interface

uses SysUtils, UKoneksi, Classes, Dialogs;

type
  TFPengaturan = class(TKoneksi)
  private
    FPSetting: TStringList;
    FVSetting: TStringList;
    FDataPengaturan: TStringList;
    FVPenyimpanan: string;
    FVPenyaluran: string;
    FPassword: string;
    FpasswordLama: string;
    FVOperasional: string;
    FVZakat: String;
    FVInfaq: String;
    FVKemitraan: String;
    FVKOperasioanl: String;
    procedure setAdd;
    procedure SetVPenyimpanan(const Value: string);
    function getSimpan: Boolean;
    procedure hapus_setting;
    procedure SetVPenyaluran(const Value: string);
    function getPengaturan: Boolean;
    function getUpdatePassword: Boolean;
    procedure setPassword(const Value: string);
    procedure setPasswordLama(const Value: string);
    procedure SetVOperasional(const Value: string);
    procedure SetVZakat(const Value: String);
    procedure SetVInfaq(const Value: String);
    procedure SetVKemitraan(const Value: String);
    procedure SetVKOperasioanl(const Value: String);
  published
    property VPenyimpanan: string read FVPenyimpanan write SetVPenyimpanan;
    property VPenyaluran: string read FVPenyaluran write SetVPenyaluran;
    property VOperasional: string read FVOperasional write SetVOperasional;
    property VZakat:String read FVZakat write SetVZakat;
    property VInfaq:String read FVInfaq write SetVInfaq;
    property VKemitraan:String  read FVKemitraan write SetVKemitraan;
    property VKOperasioanl:String read FVKOperasioanl write SetVKOperasioanl;
    property Insert: Boolean read getSimpan;
    property Pengaturan: Boolean read getPengaturan;
    property password: string write setPassword;
    property passwordLama: string write setPasswordLama;
    property UpdatePassword: Boolean read getUpdatePassword;
  public
    constructor Create(AOwner: TComponent); override;
  end;

const
  PPenyaluran = 'penyaluran';
  PPenyimpanan = 'penyimpanan';
  POperasional = 'operasional';
  PKemitraan = 'kemitraan';
  PZakat = 'zakat';
  PInfaq = 'infaq';
  PKOperasional = 'kel_operasional';
var
  FSetting: TFPengaturan;
implementation

uses
  UVariabel;

{ TFPengaturan }

constructor TFPengaturan.Create(AOwner: TComponent);
begin
  inherited;
  FPSetting := TStringList.Create;
  FVSetting := TStringList.Create;
  FDataPengaturan := TStringList.Create;
end;

function TFPengaturan.getPengaturan: Boolean;
begin
  FPPenyimpanan := eksekusi_FCsql('fc_get_setting', PPenyimpanan);
  FPPenyaluran := eksekusi_FCsql('fc_get_setting', PPenyaluran);
  FPOperasional := eksekusi_FCsql('fc_get_setting', POperasional);
  FPZakat := eksekusi_FCsql('fc_get_setting', PZakat);
  FPInfaq := eksekusi_FCsql('fc_get_setting', PInfaq);
  FPKemitraan := eksekusi_FCsql('fc_get_setting', PKemitraan);
  FPKOperasional := eksekusi_FCsql('fc_get_setting', PKOperasional);
end;

function TFPengaturan.getSimpan: Boolean;
var
  i: Integer;
begin
  try
    hapus_setting;
    setAdd;
    for i := 0 to FPSetting.Count - 1 do
    begin
      FDataPengaturan.Clear;
      FDataPengaturan.Add(FPSetting.Strings[i]);
      FDataPengaturan.Add(FVSetting.Strings[i]);
      eksekusi_SPsql('sp_add_setting', FDataPengaturan);
    end;
    Result := True;
  except
    Result := False;
  end;
end;

function TFPengaturan.getUpdatePassword: Boolean;
begin
  try
    eksekusi_sql('update tbl_user set password=password(' + QuotedStr(FPassword)
      + ')' +
      ' where tbl_user.username=' + QuotedStr(FPUser));
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFPengaturan.hapus_setting;
begin
  eksekusi_sql('delete from tbl_setting where setting_name!="versi"');
end;

procedure TFPengaturan.setAdd;
begin
  with FPSetting do
  begin
    Clear;
    Add(PPenyimpanan);
    Add(PPenyaluran);
    Add(POperasional);
    Add(PZakat);
    Add(PInfaq);
    Add(PKemitraan);
    Add(PKOperasional);
  end;
  with FVSetting do
  begin
    Clear;
    Add(FVPenyimpanan);
    Add(FVPenyaluran);
    Add(FVOperasional);
    Add(FVZakat);
    Add(FVInfaq);
    Add(FVKemitraan);
    Add(FVKOperasioanl);
  end;
end;

procedure TFPengaturan.setPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TFPengaturan.setPasswordLama(const Value: string);
begin
  FpasswordLama := Value;
end;

procedure TFPengaturan.SetVInfaq(const Value: String);
begin
  FVInfaq := Value;
end;

procedure TFPengaturan.SetVKemitraan(const Value: String);
begin
  FVKemitraan := Value;
end;

procedure TFPengaturan.SetVKOperasioanl(const Value: String);
begin
  FVKOperasioanl := Value;
end;

procedure TFPengaturan.SetVOperasional(const Value: string);
begin
  FVOperasional := Value;
end;

procedure TFPengaturan.SetVPenyaluran(const Value: string);
begin
  FVPenyaluran := Value;
end;

procedure TFPengaturan.SetVPenyimpanan(const Value: string);
begin
  FVPenyimpanan := Value;
end;

procedure TFPengaturan.SetVZakat(const Value: String);
begin
  FVZakat := Value;
end;

end.

