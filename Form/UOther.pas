unit UOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB,dxBar,UGeneral;

type
  TfrmLain = class(TFGeneral)
    btn1: TButton;
    sp1: TADOStoredProc;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLain: TfrmLain;

implementation

uses UMenuUtama, UKoneksi;

{$R *.dfm}

procedure TfrmLain.btn1Click(Sender: TObject);
var
  i: Byte;

begin
  ADOKoneksi.Execute('DELETE FROM `tbl_modul`');
  sp1.Connection:=ADOKoneksi;

  //sp1.ProcedureName:='sp_empety_modul';
  //sp1.ExecProc;
  //sp1.ProcedureName:='sp_add_modul';
  //sp1.ExecProc;
  with sp1 do
  begin
    for i := 0 to FrmHalamanUtama.ComponentCount - 1 do
    begin
      if (FrmHalamanUtama.Components[i] is TdxBarLargeButton) then
      begin
        Parameters[0].Value:=i;
        Parameters[1].Value:=TdxBarLargeButton(FrmHalamanUtama.Components[i]).Name;
        Parameters[2].Value:=TdxBarLargeButton(FrmHalamanUtama.Components[i]).Caption;
        ExecProc;
        mmo1.Lines.Add(IntToStr(i) + ' ' +
          TdxBarLargeButton(FrmHalamanUtama.Components[i]).Name);
      end;
    end;

  end;

end;

end.
