unit USaldoAwalMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtons, cxDBExtLookupComboBox, ADODB, UGeneral,
  Penyimpanan,
  cxCurrencyEdit, dxLayoutLookAndFeels, cxCheckBox, cxLabel, cxCalendar,
  cxButtonEdit, cxSpinEdit, cxLookAndFeels, cxStyles, cxCustomData,
  cxFilter, cxData;

type
  TfrmSaldoAwalMitra = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    btnSimpan: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gridPenyimpanan: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    grid: TcxGrid;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dsAmil: TDataSource;
    eCrSaldo: TcxCurrencyEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup;
    batasdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup;
    LCIdxlytcntrl1Item7: TdxLayoutItem;
    btn2: TcxButton;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    GridRepPeriode: TcxGridViewRepository;
    gridPeriode: TcxGridDBTableView;
    gcolmPeriodeline: TcxGridDBColumn;
    gcolmPeriodethn_fiskal: TcxGridDBColumn;
    gcolmPeriodetgl_mulai: TcxGridDBColumn;
    gcolmPeriodetgl_akhir: TcxGridDBColumn;
    gcolmPeriodestatus_penutupan: TcxGridDBColumn;
    qryPeriode: TADOQuery;
    dsPeriode: TDataSource;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    cbbPeriode: TcxExtLookupComboBox;
    qry1: TADOQuery;
    gcolmPenyimpanankode_donatur: TcxGridDBColumn;
    gcolmPenyimpanannama_lengkap: TcxGridDBColumn;
    gcolmPenyimpanantanggal: TcxGridDBColumn;
    gcolmPenyimpanansaldo: TcxGridDBColumn;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    btnTambah: TcxButton;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    btnHapus: TcxButton;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    eDonatur: TcxButtonEdit;
    LCIdxlytcntrl1Item6: TdxLayoutItem;
    eNamaDonatur: TcxTextEdit;
    LCIdxlytcntrl1Item8: TdxLayoutItem;
    btnCari: TcxButton;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    LCIdxlytcntrl1Item9: TdxLayoutItem;
    spePage: TcxSpinEdit;
    LCIdxlytcntrl1Item10: TdxLayoutItem;
    spePage1: TcxSpinEdit;
    dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup;
    gcolmPenyimpananid: TcxGridDBColumn;
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure spePagePropertiesChange(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
    FPenyimpanan: TFPenyimpanan;
  public
    { Public declarations }
  end;

var
  frmSaldoAwalMitra: TfrmSaldoAwalMitra;

implementation

uses
  UFindDonatur, UVariabel, SaldoKemitraan, UControl;

{$R *.dfm}
{ TfrmSaldoAwalMitra }

procedure TfrmSaldoAwalMitra.eDonaturPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TfrmFindDonatur, frmFindDonatur);
  with frmFindDonatur do
  begin
    if (ShowModal = mrOk) then
    begin
      eDonatur.EditValue :=
        gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      eDonatur.Hint := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
    end;
  end;
end;

procedure TfrmSaldoAwalMitra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSaldoAwalMitra.btn2Click(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      VarToDateTime(cbbPeriode.EditValue));
    Parameters[1].Value := (spePage.Value * spePage1.Value) - spePage1.Value;
    Parameters[2].Value := spePage1.Value;
    Parameters[3].Value := ' ';
    Open;
  end;
end;

procedure TfrmSaldoAwalMitra.FormShow(Sender: TObject);
begin
  cbbPeriode.EditValue := FPPeriode;
end;

procedure TfrmSaldoAwalMitra.btnTambahClick(Sender: TObject);
begin
  Self.Tag := 1;
  Logika_Button(True);
  eNamaDonatur.Clear;
  eNamaDonatur.Hint := '';
  eCrSaldo.Clear;
end;

procedure TfrmSaldoAwalMitra.btnSimpanClick(Sender: TObject);
var
  fmitra: TSaldoKemitraan;
begin
  fmitra := TSaldoKemitraan.Create(nil);
  with fmitra do
  begin
    KodeDonatur := eDonatur.Hint;
    Tanggal := VarToDateTime(cbbPeriode.EditValue);
    saldo := eCrSaldo.EditValue;
    Insert;
    msgSuksesAdd;
  end;
  FreeAndNil(fmitra);
  Logika_Button(False);
end;

procedure TfrmSaldoAwalMitra.btnBatalClick(Sender: TObject);
begin
  set_button('ddee',btnBatal,btnSimpan,btnTambah,btnHapus);
end;

procedure TfrmSaldoAwalMitra.btnCariClick(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      VarToDateTime(cbbPeriode.EditValue));
    Parameters[1].Value := 0;
    Parameters[2].Value := 20;
    Parameters[3].Value := eNamaDonatur.EditingValue;
    Open;
  end;
end;

procedure TfrmSaldoAwalMitra.spePagePropertiesChange(Sender: TObject);
begin
  with qry1 do
  begin
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      VarToDateTime(cbbPeriode.EditValue));
    Parameters[1].Value := (spePage.Value * spePage1.Value) - spePage1.Value;
    Parameters[2].Value := spePage1.Value;
    Parameters[3].Value := ' ';
    Open;
  end;
end;

procedure TfrmSaldoAwalMitra.btnHapusClick(Sender: TObject);
var
  fmitra: TSaldoKemitraan;
begin
  if (MessageBox(Handle, 'Anda Yakin Hapus', 'Hapus Data', MB_ICONWARNING +
    MB_OKCANCEL) = mrOk) then
  begin
    fmitra := TSaldoKemitraan.Create(nil);
    fmitra.eksekusi_sql(format('delete from tbl_saldo_kemitraan_periode  where id=%s',
      [gcolmPenyimpananid.DataBinding.Field.AsString]));
    MessageBox(Handle, 'Sudah Terhapus', 'Hapus', MB_ICONINFORMATION + MB_OK);
    btn2Click(Sender);
    FreeAndNil(fmitra);
  end;
end;

end.

