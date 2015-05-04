unit SaldoPenyaluran;

interface
uses SysUtils, UKoneksi, Dialogs, Classes, ADODB;

type
  TSaldoPenyaluran = class(TKoneksi)
  private
    Fid_perkiraan: string;
    Fjumlah: Double;
    FDataSaldo: TStringList;
    procedure Setid_perkiraan(const Value: string);
    procedure Setjumlah(const Value: Double);
    function getSimapan: Boolean;
    function GetSaldo: Double;
  published
    property id_perkiraan: string read Fid_perkiraan write Setid_perkiraan;
    property jumlah: Double read Fjumlah write Setjumlah;
    property Insert: Boolean read getSimapan;
    property Saldo: Double read GetSaldo;
  public
    constructor Create(AOwner: TComponent); override;
  end;
implementation

{ TSaldoPenyaluran }

constructor TSaldoPenyaluran.Create(AOwner: TComponent);
begin
  inherited;
  FDataSaldo := TStringList.Create;
end;

function TSaldoPenyaluran.GetSaldo: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado, 'select saldo_operasional from tbl_saldo_operasional where ' +
    'id_perkiraan =' + QuotedStr(Fid_perkiraan));
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('saldo_operasional').AsFloat
  else
    Result := 0;
end;

function TSaldoPenyaluran.getSimapan: Boolean;
begin
  Result := False;
  FDataSaldo.Clear;
  FDataSaldo.add(Fid_perkiraan);
  FDataSaldo.add(CurrToStr(Fjumlah));
  eksekusi_SPsql('sp_add_saldo_penyaluran', FDataSaldo);
  Result := True;
end;

procedure TSaldoPenyaluran.Setid_perkiraan(const Value: string);
begin
  Fid_perkiraan := Value;
end;

procedure TSaldoPenyaluran.Setjumlah(const Value: Double);
begin
  Fjumlah := Value;
end;

end.

