unit Kecamatan;

interface
uses
  UKoneksi,DB,SysUtils,Classes,Dialogs;

type
  TKecamatan = class(Tkoneksi)
  private
    FDataKecamatan:TStringList;
    FKodeKec: String;
    FKodeKab: String;
    FNamaKec: String;
    FKodeLama: String;
    FKodeLamaKab: String;
    procedure setAdd;
    function  setSimpan():Boolean;
    function  setUpdate():Boolean;
    function  hapus():Boolean;
    procedure SetKodeKec(const Value: String);
    procedure SetKodeKab(const Value: String);
    procedure SetNamaKec(const Value: String);
    procedure SetKodeLama(const Value: String);
    procedure SetKodeLamaKab(const Value: String);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Delete:Boolean read hapus;
    property Insert:Boolean read setSimpan;
    property Update:Boolean read setUpdate;
    property KodeKec:String read FKodeKec write SetKodeKec;
    property KodeKab:String read FKodeKab write SetKodeKab;
    property NamaKec:String read FNamaKec write SetNamaKec;
    property KodeLama:String read FKodeLama write SetKodeLama;
    property KodeLamaKab:String read FKodeLamaKab write SetKodeLamaKab;
end;

implementation

{ TFkABUPATEN }

procedure TKecamatan.setAdd;
begin
  with FDataKecamatan do
  begin
    Clear;
    Add(KodeKec);
    Add(KodeKab);
    Add(NamaKec);
  end;
end;

function TKecamatan.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_kecamatan',FDataKecamatan);
    Result:=True;
  except
    Result:=false;
  end;
end;




function  TKecamatan.hapus():Boolean;
begin
  Result:=False;
  try
    eksekusi_sql('delete from tbl_kecamatan where kode_kec='+QuotedStr(FKodeKec)+
    'and kode_kab='+QuotedStr(KodeKab));
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;

end;

function TKecamatan.setUpdate: Boolean;
begin
begin
  try
    setAdd;
    FDataKecamatan.Add(FKodeLama);
    FDataKecamatan.Add(FKodeLamaKab);
    eksekusi_SPsql('sp_update_kecamatan',FDataKecamatan);
    Result:=True;
  except
    Result:=false;
  end;
 end;
end;

constructor TKecamatan.Create(AOwner: TComponent);
begin
  inherited;
  FDataKecamatan:=TStringList.Create;
end;

procedure TKecamatan.SetKodeKec(const Value: String);
begin
  FKodeKec := Value;
end;

procedure TKecamatan.SetKodeKab(const Value: String);
begin
  FKodeKab := Value;
end;

procedure TKecamatan.SetNamaKec(const Value: String);
begin
  FNamaKec := Value;
end;

procedure TKecamatan.SetKodeLama(const Value: String);
begin
  FKodeLama := Value;
end;

procedure TKecamatan.SetKodeLamaKab(const Value: String);
begin
  FKodeLamaKab := Value;
end;

end.
