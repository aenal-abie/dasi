unit Rekening;

interface
uses
  UKoneksi,DB,SysUtils,Classes,Dialogs;

type
  TRekening = class(Tkoneksi)
  private
    FDataRekening:TStringList;
    FKodeDonatur: String;
    FNoRekening: String;
    FNamaBank: String;
    procedure setAdd;
    function setHapus: Boolean;
    function setSimpan: Boolean;
    procedure SetKodeDonatur(const Value: String);
    procedure SetNoRekening(const Value: String);
    procedure SetNamaBank(const Value: String);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property Insert:Boolean read setSimpan;
    property Delete:Boolean read setHapus;
    property KodeDonatur:String read FKodeDonatur write SetKodeDonatur;
    property NoRekening:String read FNoRekening write SetNoRekening;
    property NamaBank:String read FNamaBank write SetNamaBank;
end;
implementation

{ TRekening }

constructor TRekening.Create(AOwner: TComponent);
begin
  inherited;
  FDataRekening:=TStringList.Create;
end;

procedure TRekening.setAdd;
begin
  with FDataRekening do
  begin
    Clear;
    Add(KodeDonatur);
    Add(NoRekening);
    Add(NamaBank);
  end;

end;


function TRekening.setHapus: Boolean;
begin
  Result:=False;
  try
    eksekusi_SPsql('sp_del_rekening',FKodeDonatur);
    Result:=True;
  except
    ShowMessage('Gagal Hapus Data');
    Result:=False;
  end;

end;



procedure TRekening.SetKodeDonatur(const Value: String);
begin
  FKodeDonatur := Value;
end;

procedure TRekening.SetNamaBank(const Value: String);
begin
  FNamaBank := Value;
end;

procedure TRekening.SetNoRekening(const Value: String);
begin
  FNoRekening := Value;
end;

function TRekening.setSimpan: Boolean;
begin
  try
    setAdd;
    eksekusi_SPsql('sp_add_rekening',FDataRekening);
    Result:=True;
    //ShowMessage('horeee');
  except
    Result:=false;
  end;

end;


end.
