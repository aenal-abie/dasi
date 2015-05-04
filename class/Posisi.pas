unit Posisi;

interface
uses
  UKoneksi,DB,SysUtils,Classes,Dialogs;

type
  TFPosisi = class(Tkoneksi)
  private
    FKode: Integer;
    FPosisi: String;
    FDataPosisi:TStringList;
    procedure SetKode(const Value: Integer);
    procedure SetPosisi(const Value: String);
    procedure setAdd;
    function setHapus: Boolean;
    function setSimpan: Boolean;
    function setUpdate: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Delete:Boolean read setHapus;
    property Insert:Boolean read setSimpan;
    property Update:Boolean read setUpdate;
    property Kode:Integer read FKode write SetKode;
    property Posisi:String read FPosisi write SetPosisi;
end;

implementation

{ TFKabupaten }

constructor TFPosisi.Create(AOwner: TComponent);
begin
  inherited;
  FDataPosisi:=TStringList.Create;
end;

procedure TFPosisi.setAdd;
begin
  with FDataPosisi do
  begin
    Clear;
    Add(FPosisi);
  end;

end;

function TFPosisi.setHapus: Boolean;
begin
  Result:=False;
  try
    eksekusi_SPsql('sp_del_posisi',IntToStr(FKode));
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;

end;

procedure TFPosisi.SetKode(const Value: Integer);
begin
  FKode := Value;
end;

procedure TFPosisi.SetPosisi(const Value: String);
begin
  FPosisi := Value;
end;

function TFPosisi.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_posisi',FDataPosisi);
    Result:=True;
  except
    Result:=false;
  end;

end;

function TFPosisi.setUpdate: Boolean;
begin
begin
  try
    setAdd;
    FDataPosisi.Add(IntToStr(FKode));
    eksekusi_SPsql('sp_update_posisi',FDataPosisi);
    Result:=True;
  except
    Result:=false;
  end;
 end;

end;

end.
