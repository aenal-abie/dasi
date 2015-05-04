unit SaldoOperasional;

interface
uses SysUtils, UKoneksi, Dialogs, Classes, ADODB;

type
  TSaldoOperasional = class(TKoneksi)
  private
    function GetSaldo: Double;
  published
    property Saldo: Double read GetSaldo;
  public
  end;
implementation

{ TSaldoOperasional }

function TSaldoOperasional.GetSaldo: Double;
var
  pado: TADOQuery;
begin
  pado := TADOQuery.Create(ADOKoneksi);
  view_ado(pado,
    'select ts.value as saldo_operasional from tbl_setting ts where ts.setting_name="operasional"');
  view_ado(pado,
    'select saldo_penyaluran from tbl_saldo_penyaluran where id_perkiraan ="' +
    pado.Fieldbyname('saldo_operasional').AsString + '" ');
  if (pado.RecordCount > 0) then
    Result := pado.Fieldbyname('saldo_penyaluran').AsFloat
  else
    Result := 0;
end;

end.

