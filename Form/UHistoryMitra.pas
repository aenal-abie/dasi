unit UHistoryMitra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, 
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, Menus, cxGrid, ADODB, dxLayoutLookAndFeels, StdCtrls,
  cxButtons, pngimage, ExtCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxTextEdit, cxMaskEdit, cxCalendar, UGeneral, dxPSGlbl,
  dxPSUtl, dxBkgnd, dxWrap, dxPrnDev, 
  dxPSFillPatterns, dxPSEdgePatterns, 
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxPScxCommon, dxPScxGrid6Lnk,
  cxButtonEdit, cxCheckBox, ppParameter, ppCtrls, ppBands, ppVar, jpeg,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, scExcelExport, cxLookAndFeels, cxFilter, cxData, dxPSEngn,
  dxPrnPg, dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport;

type
  TfrmHistoryMitra = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    grid1: TcxGrid;
    gridPenerimaan: TcxGridDBTableView;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    dxlytgrp1: TdxLayoutGroup;
    LCIdxlytcntrl1Item11: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn5: TcxButton;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    qryPenerimaan: TADOQuery;
    dsPenerimaan: TDataSource;
    GridRep1: TcxGridViewRepository;
    gridAsal: TcxGridDBTableView;
    gcolmAsalid_perkiraan: TcxGridDBColumn;
    gcolmAsalnama_perkiraan: TcxGridDBColumn;
    gcolmAsalsaldo_operasional: TcxGridDBColumn;
    gridTujuan: TcxGridDBTableView;
    gcolmTujuanid_perkiraan: TcxGridDBColumn;
    gcolmTujuannama_perkiraan: TcxGridDBColumn;
    gcolmTujuansaldo_operasional: TcxGridDBColumn;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnFilter: TcxButton;
    cxgrdlvlgrid1Level2: TcxGridLevel;
    qryDataPengeluaran: TADOQuery;
    dsPengeluaran: TDataSource;
    gridPengeluaran: TcxGridDBTableView;
    dxcmpntprntr1: TdxComponentPrinter;
    dxgrdrprtlnkGridPrintTransaski: TdxGridReportLink;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    btn1: TcxButton;
    cxstyl4: TcxStyle;
    cxstyl5: TcxStyle;
    dsPeriode: TDataSource;
    qryPeriode: TADOQuery;
    GridRepPeriode: TcxGridViewRepository;
    gridPeriode: TcxGridDBTableView;
    gcolmPeriodeline: TcxGridDBColumn;
    gcolmPeriodethn_fiskal: TcxGridDBColumn;
    gcolmPeriodetgl_mulai: TcxGridDBColumn;
    gcolmPeriodetgl_akhir: TcxGridDBColumn;
    gcolmPeriodestatus_penutupan: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    cbbPeriode: TcxExtLookupComboBox;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    eDonatur: TcxButtonEdit;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    gcolmPenerimaantanggal: TcxGridDBColumn;
    gcolmPenerimaannama_perkiraan: TcxGridDBColumn;
    gcolmPenerimaansubtotal: TcxGridDBColumn;
    cbx1: TcxCheckBox;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    gcolmPengeluarantanggal: TcxGridDBColumn;
    gcolmPengeluaransub_total: TcxGridDBColumn;
    gcolmPengeluaranketerangan: TcxGridDBColumn;
    eCrSaldoAwal: TcxCurrencyEdit;
    LCIdxlytcntrl1Item6: TdxLayoutItem;
    batasdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    LCIdxlytcntrl1Item7: TdxLayoutItem;
    eCr1: TcxCurrencyEdit;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    gcolmPenerimaantot_perkiraan: TcxGridDBColumn;
    pdbpln1: TppDBPipeline;
    prprtRek: TppReport;
    phdrbnd1: TppHeaderBand;
    pshp4: TppShape;
    pshp3: TppShape;
    pshp2: TppShape;
    pshp1: TppShape;
    pmg1: TppImage;
    plblNamaDonatur: TppLabel;
    plblAlamat: TppLabel;
    plblTlp: TppLabel;
    plbllbl5: TppLabel;
    plbllbl6: TppLabel;
    plbllbl7: TppLabel;
    plbllbl8: TppLabel;
    plbllbl9: TppLabel;
    lblL1: TppDetailBand;
    pdbtxttanggal: TppDBText;
    pdbtxtnama_perkiraan: TppDBText;
    pdbtxtsubtotal: TppDBText;
    pdbclcnama_perkiraan: TppDBCalc;
    pftrbnd1: TppFooterBand;
    psystmvrbl1: TppSystemVariable;
    plbllbl3: TppLabel;
    psmrybnd1: TppSummaryBand;
    pln2: TppLine;
    pln1: TppLine;
    pdbclcsubtotal: TppDBCalc;
    plbllbl10: TppLabel;
    plbllbl11: TppLabel;
    plblTotalZakat: TppLabel;
    plblTotalInfaq: TppLabel;
    plnAlamat: TppLine;
    pln4: TppLine;
    pln5: TppLine;
    pln6: TppLine;
    plbllbl14: TppLabel;
    plblKemitraan: TppLabel;
    plblCKemitraan: TppLabel;
    plnBawah: TppLine;
    plnKanan: TppLine;
    plnKiri: TppLine;
    prmtrlst1: TppParameterList;
    qryLaporan: TADOQuery;
    dsLaporan: TDataSource;
    pfldpdbpln1ppField1: TppField;
    sp1: TADOStoredProc;
    batasdxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem;
    LCIdxlytcntrl1Item8: TdxLayoutItem;
    btnExport: TcxButton;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    qryKeExcel: TADOQuery;
    scxclxprtLap: TscExcelExport;
    dtfldKeExcelTanggal: TDateField;
    FKeExcelKodeDonatur: TStringField;
    FKeExcelNamaLengkap: TStringField;
    FKeExcelAlamat: TStringField;
    FKeExcelSaldoAwal: TCurrencyField;
    FKeExcelPenerimaan: TCurrencyField;
    FKeExcelPengeluaran: TCurrencyField;
    crncyfldKeExcelTotal: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnFilterClick(Sender: TObject);
    procedure gridPenerimaanTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure qryKeExcelCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    penerimaan: Currency;
    procedure cek_saldo;
    procedure hitung_zakat_infaq;
  public
    { Public declarations }
  end;

var
  frmHistoryMitra: TfrmHistoryMitra;

implementation

uses
  UVariabel, UFindDonatur, UKoneksi;

{$R *.dfm}

procedure TfrmHistoryMitra.FormCreate(Sender: TObject);
begin
  //Koneksikan;

end;

procedure TfrmHistoryMitra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmHistoryMitra.btn1Click(Sender: TObject);
begin
  if (cek_kosong(1)) then
  begin
    with qryLaporan do
    begin
      Connection := ADOKoneksi;
      DisableControls;
      Close;
      Parameters[0].Value := eDonatur.Hint;
      Parameters[1].Value := FormatDateTime('yyyy-mm-dd',
        gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
      Parameters[2].Value := FormatDateTime('yyyy-mm-dd', Date);
      Open;
      EnableControls;
    end;
    plblNamaDonatur.Caption := eDonatur.Text;
    plblAlamat.Caption := 'Alamat ' + btn1.Hint;
    plblTlp.Caption := 'Handphone/Tlp :' + grid1.Hint;
    hitung_zakat_infaq;
    if (FPReport = 1) then
      prprtRek.DeviceType := 'Screen'
    else
      prprtRek.DeviceType := 'Printer';
    prprtRek.Print;
  end;
end;

procedure TfrmHistoryMitra.eDonaturPropertiesButtonClick(Sender: TObject;
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
      btnCari.Hint := gcolmDonaturalamat_rumah.DataBinding.Field.AsString;
      grid1.Hint := gcolmDonaturhandphone.DataBinding.Field.AsString;
    end;
  end;
end;

procedure TfrmHistoryMitra.btnFilterClick(Sender: TObject);
begin
  with qryPenerimaan do
  begin
    Close;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    Parameters[1].Value := eDonatur.Hint;
    if (cbx1.Checked = true) then
      Parameters[2].Value := 'Y'
    else
      Parameters[2].Value := 'N';
    Parameters[3].Value := FPKemitraan;
    Open;
  end;

  with qryDataPengeluaran do
  begin
    Close;
    Parameters[0].Value := eDonatur.Hint;
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    Open;
  end;
  cek_saldo;
  cxgrdlvlgrid1Level1.Active := True;
  cxgrdlvlgrid1Level2.Active := True;
  cxgrdlvlgrid1Level1.Active := True;
end;

procedure TfrmHistoryMitra.cek_saldo;
var
  ado: TADOQuery;
begin
  with ado do
  begin
    ado := TADOQuery.Create(nil);
    ado.Connection := ADOKoneksi;
    Close;
    SQL.Clear;
    SQL.Add(Format('select t.saldo from tbl_saldo_kemitraan_periode t where t.tanggal="%s" ' +
      ' and t.kode_donatur="%s"', [FormatDateTime('YYYY-MM-DD',
        gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime), eDonatur.Hint]));
    Open;
    eCrSaldoAwal.EditValue := ado.FieldByName('saldo').AsString;
    FreeAndNil(ado);
  end;
end;

procedure
  TfrmHistoryMitra.gridPenerimaanTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (AValue > 0) then
  begin
    penerimaan := AValue;
  end
  else
    penerimaan := 0;

end;

procedure
  TfrmHistoryMitra.gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (AValue > 0) then
  begin
    eCr1.Value := eCrSaldoAwal.Value + penerimaan - AValue;
  end
  else
    eCr1.Value := eCrSaldoAwal.Value + penerimaan;
end;

procedure TfrmHistoryMitra.FormShow(Sender: TObject);
begin
  cbbPeriode.EditValue := FPPeriode;
end;

procedure TfrmHistoryMitra.hitung_zakat_infaq;
begin
  with sp1 do
  begin
    Connection := ADOKoneksi;
    DisableControls;
    Close;
    Parameters[0].Value := eDonatur.Hint;
    Parameters[1].Value := FormatDateTime('yyyy-mm-dd',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    Parameters[2].Value := FormatDateTime('yyyy-mm-dd', Date);
    Parameters[3].Value := FPZakat;
    Parameters[4].Value := FPInfaq;
    Open;
    EnableControls;
    plblTotalZakat.Caption := FormatFloat('###,###,##0',
      FieldByname('total_zakat').AsCurrency);
    plblTotalInfaq.Caption := FormatFloat('###,###,##0',
      FieldByname('total_infaq').AsCurrency);
    if (btnFilter.Hint <> '0') then
    begin
      plblKemitraan.Text := FormatCurr('###,###,##0',
        eCr1.EditValue);
      plnKiri.Visible := True;
      plnBawah.Visible := True;
      plnKanan.Visible := True;
      plblKemitraan.Visible := True;
      plblCKemitraan.Visible := True;
    end
    else
    begin
      plnKiri.Visible := False;
      plnBawah.Visible := False;
      plnKanan.Visible := False;
      plblKemitraan.Visible := False;
      plblCKemitraan.Visible := False;
    end;
  end;

end;

procedure TfrmHistoryMitra.btnExportClick(Sender: TObject);
begin
  with qryKeExcel do
  begin
    Close;
    DisableControls;
    Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', Date);
    Open;
    EnableControls;
  end;

  scxclxprtLap.Disconnect();
  scxclxprtLap.LoadDefaultProperties;
  scxclxprtLap.Dataset := qryKeExcel;
  scxclxprtLap.WorksheetName := 'DATA SALDO MITRA';
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

procedure TfrmHistoryMitra.qryKeExcelCalcFields(DataSet: TDataSet);
begin
  crncyfldKeExcelTotal.AsCurrency := FKeExcelSaldoAwal.AsCurrency +
    FKeExcelPenerimaan.AsCurrency - FKeExcelPengeluaran.AsCurrency;
end;

end.

