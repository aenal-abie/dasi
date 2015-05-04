unit Kabupaten;

interface
uses
  UKoneksi,DB,SysUtils,Classes,Dialogs;

type
  TFKabupaten = class(Tkoneksi)
  private
    FKode,FNama,FKodeLama:String;
    FDataKabupaten:TStringList;
    FAlias: String;
    procedure setKode(const Value:String);
    procedure setNama(const Value:String);
    procedure SetkodeLama(const Value:String);
    procedure setAdd;
    function  setSimpan():Boolean;
    function  setUpdate():Boolean;
    function  hapus():Boolean;
    procedure SetAlias(const Value: String);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Delete:Boolean read hapus;
    property Insert:Boolean read setSimpan;
    property Update:Boolean read setUpdate;
    property KodeKabupaten:String write setKode;
    property Alias:String read FAlias write SetAlias;
    property NamaKabupaten:String write setNama;
    property KodeLama:String write SetkodeLama;
end;

implementation

{ TFkABUPATEN }

procedure TFKabupaten.setAdd;
begin
  with FDataKabupaten do
  begin
    Clear;
    Add(FKode);
    Add(FNama);
    Add(FAlias);
  end;
end;

function TFKabupaten.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_kabupaten',FDataKabupaten);
    Result:=True;
  except
    Result:=false;
  end;
end;

procedure TFKabupaten.setNama(const Value: String);
begin
  FNama:=Value
end;


procedure TFKabupaten.setKode(const Value: String);
begin
  FKode:=Value;
end;

function  TFKabupaten.hapus():Boolean;
begin
  Result:=False;
  try
    eksekusi_SPsql('sp_del_kabupaten',FKode);
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;

end;

function TFKabupaten.setUpdate: Boolean;
begin
begin
  try
    setAdd;
    FDataKabupaten.Add(FKodeLama);
    eksekusi_SPsql('sp_update_kabupaten',FDataKabupaten);
    Result:=True;
  except
    Result:=false;
  end;
 end;
end;

procedure TFKabupaten.SetkodeLama(const Value: String);
begin
  FKodeLama:=Value;
end;

constructor TFKabupaten.Create(AOwner: TComponent);
begin
  inherited;
  FDataKabupaten:=TStringList.Create;
end;

procedure TFKabupaten.SetAlias(const Value: String);
begin
  FAlias := Value;
end;

end.
 