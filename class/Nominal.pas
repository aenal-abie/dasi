unit Nominal;

interface

uses SysUtils, Dialogs, Classes, UKoneksi;

Type
  TFNominal=class(TKoneksi)
  private
    FKode_Nominal:Integer;
    FNominal:Currency;
    FJenis_Uang:String;
    FDataNominal:TStringList;
    function hapus: Boolean;
    procedure setJenisUang(const Value: String);
    procedure setKodeNominal(const Value: Integer);
    procedure setNominal(const Value: Currency);
    procedure setAdd();
    function setSimpan: Boolean;
    function setUbah: Boolean;
  protected
  public
    constructor Create(AOwner:TComponent);override;
  published
    property Insert:Boolean read setSimpan;
    property Update:Boolean read setUbah;
    property Delete:Boolean read hapus;
    property nominal:Currency write setNominal;
    property jenis_uang:String write setJenisUang;
    property kode_nominal:Integer write setKodeNominal;
End;

implementation

{ TFNominal }

constructor TFNominal.Create(AOwner: TComponent);
begin
  inherited;
  FDataNominal:=TStringList.Create;
end;

function TFNominal.hapus: Boolean;
begin
  try
    eksekusi_SPsql('sp_del_nominal', IntToStr(FKode_Nominal));
    Result:=True;
  except
    Result:=False;
  end;
end;

procedure TFNominal.setAdd;
begin
  with FDataNominal do
  begin
    Clear;
    Add(CurrToStr(FNominal));
    Add(FJenis_Uang);
  end;
end;

procedure TFNominal.setJenisUang(const Value: String);
begin
  FJenis_Uang:=Value;
end;

procedure TFNominal.setKodeNominal(const Value: Integer);
begin
  FKode_Nominal:=Value;
end;

procedure TFNominal.setNominal(const Value: Currency);
begin
  FNominal:=Value;
end;

function TFNominal.setSimpan: Boolean;
begin
  try
    setAdd();
    eksekusi_SPsql('sp_add_nominal', FDataNominal);
    Result:=True;
  except
    Result:=False;
  end;
end;

function TFNominal.setUbah: Boolean;
begin
  try
    setAdd;
    FDataNominal.Add(IntToStr(FKode_Nominal));
    eksekusi_SPsql('sp_update_nominal', FDataNominal);
    Result:=True;
  except
    Result:=False;
  end;
end;

end.
