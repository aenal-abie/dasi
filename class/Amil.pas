unit Amil;

interface
uses
  UKoneksi,DB,SysUtils,Classes,Dialogs;

type
  TFAmil = class(Tkoneksi)
  private
    FKode,FNama,FTempatLahir,fSex,FAlamat,FHp,Fstatus,FSuamiIstri,FPendidikanT,Fgelar,FKab,FPosisi:String;
    Ftanggal:TDateTime;
    FdataAmil:TStringList;
    FAnak:Integer;
    procedure setKode(const Value:String);
    procedure setNama(const Value:String);
    procedure setTempatLahir(const Value:String);
    procedure setTanggalLahir(const Value:TDateTime);
    procedure setSex(const Value:String);
    procedure setAlamat(const Value:String);
    procedure setHp(const Value:String);
    procedure setAnak(const Value:Integer);
    procedure setStatus(const Value:String);
    procedure setSuamiIstri(const Value:String);
    procedure setPendidikan(const Value:String);
    procedure setGelar(const Value:String);
    procedure setKab(const Value:String);
    procedure setPosisi(const Value: String);
    procedure setAdd;
    function  getSimpan():Boolean;
    procedure settNama(const Value: String);
    function  hapus():Boolean;
    function  setUpdate():Boolean;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert:Boolean read getSimpan;
    property Delete:Boolean read hapus;
    property Update:Boolean read setUpdate;
    property Kode:String write setKode;
    property Nama:String write setNama;
    property JAnak:Integer write setAnak;
    property Alamat:String write setAlamat;
    property TLahir:String write setTempatLahir;
    property TglLahir:TDateTime write  setTanggalLahir;
    property sex:String write setSex;
    property Hp:String write setHp;
    property Status:String write setStatus;
    property Suami:String write setSuamiIstri;
    property Pendidikan:String write setPendidikan;
    property Gelar:String write setGelar;
    property Kabupaten:String write setKab;
    property Posisi:String write setPosisi;
end;

implementation

{ TFAmil }

procedure TFAmil.setAdd;
begin
  with FdataAmil do
  begin
    Clear;
    Add(FNama);
    Add(FTempatLahir);
    Add(FormatDateTime('YYYY-MM-DD',Ftanggal));
    Add(fSex);
    Add(FAlamat);
    Add(FHp);
    Add(Fstatus);
    Add(FSuamiIstri);
    Add(IntToStr(FAnak));
    Add(FPendidikanT);
    Add(Fgelar);
    Add(FKab);
    Add(FPosisi);
  end;
end;

function TFAmil.getSimpan: Boolean;
begin
  try
    setAdd();
    eksekusi_SPsql('sp_add_amil',FdataAmil);
    Result:=True;
  except
    Result:=false;
  end;
end;


procedure TFAmil.setAlamat(const Value: String);
begin
  FAlamat:=Value;
end;

procedure TFAmil.setHp(const Value: String);
begin
  FHp:=Value;
end;

procedure TFAmil.setKab(const Value: String);
begin
    FKab:=Value;
end;

procedure TFAmil.setNama(const Value: String);
begin
  FNama:=Value
end;

procedure TFAmil.setPendidikan(const Value: String);
begin
  FPendidikanT:=Value;
end;

procedure TFAmil.setSex(const Value: String);
begin
  fSex:=Value;
end;

procedure TFAmil.setStatus(const Value: String);
begin
  Fstatus:=Value;
end;

procedure TFAmil.setSuamiIstri(const Value: String);
begin
   FSuamiIstri:=Value;
end;

procedure TFAmil.setTempatLahir(const Value: String);
begin
  FTempatLahir:=Value;
end;

procedure TFAmil.setTanggalLahir(const Value: TDateTime);
begin
  Ftanggal:=Value;
end;

procedure TFAmil.settNama(const Value: String);
begin
  FNama:=Value;
end;

procedure TFAmil.setPosisi(const Value: String);
begin
  FPosisi:=Value;
end;

constructor TFAmil.Create(AOwner: TComponent);
begin
  inherited;
  FdataAmil:=TStringList.Create;
end;

function TFAmil.hapus: Boolean;
begin
  Result:=False;
  try
    eksekusi_SPsql('sp_del_amil',FKode);
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;

end;

procedure TFAmil.setKode(const Value: String);
begin
  FKode:=Value;
end;

procedure TFAmil.setAnak(const Value: Integer);
begin
  FAnak:=Value;
end;

procedure TFAmil.setGelar(const Value: String);
begin
  Fgelar:=Value;
end;

function TFAmil.setUpdate: Boolean;
begin
  try
    setAdd;
    FdataAmil.Add(FKode);
    eksekusi_SPsql('sp_update_amil',FdataAmil);
    Result:=True;
  except
    Result:=false;
  end;
 end;

end.
 