unit UDetailPengeluaranPerPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, cxGrid, ADODB,
  dxLayoutLookAndFeels, StdCtrls, pngimage, ExtCtrls, cxButtons,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxTextEdit, cxMaskEdit, cxCalendar, UGeneral,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxGrid6Lnk, dxPSdxLC2Lnk, dxPSImgLnk,
  dxPSContainerLnk, dxPScxCommon, dxPSCore;

type
  TfrmDetailPengeluaranPerPerkiraan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    DtTgl: TcxDateEdit;
    grid1: TcxGrid;
    gridMutasi: TcxGridDBTableView;
    gcolmMutasitanggal: TcxGridDBColumn;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    cbblkpSource: TcxExtLookupComboBox;
    Dt1: TcxDateEdit;
    btnFilter: TcxButton;
    dxlytgrp1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group5: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group6: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    LCI1: TdxLayoutItem;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    LCILayoutControl1Item14: TdxLayoutItem;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    LCIdxlytcntrl1Item11: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    qryDataPengeluaran: TADOQuery;
    dsMutasi: TDataSource;
    qryAsal: TADOQuery;
    dsAsal: TDataSource;
    GridRep1: TcxGridViewRepository;
    gridAsal: TcxGridDBTableView;
    gcolmAsalid_perkiraan: TcxGridDBColumn;
    gcolmAsalnama_perkiraan: TcxGridDBColumn;
    gcolmAsalsaldo_operasional: TcxGridDBColumn;
    gridTujuan: TcxGridDBTableView;
    gcolmTujuanid_perkiraan: TcxGridDBColumn;
    gcolmTujuannama_perkiraan: TcxGridDBColumn;
    gcolmTujuansaldo_operasional: TcxGridDBColumn;
    gcolmMutasinama_perkiraan: TcxGridDBColumn;
    gcolmMutasiketerangan: TcxGridDBColumn;
    gcolmMutasisub_total: TcxGridDBColumn;
    gcolmMutasikode_pengeluaran: TcxGridDBColumn;
    dxcmpntprntr1: TdxComponentPrinter;
    dxgrdrprtlnkdxcmpntprntr1Link1: TdxGridReportLink;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    dxgrdrprtlnkstylsht1: TdxGridReportLinkStyleSheet;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl7: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    cxstyl12: TcxStyle;
    cxstyl13: TcxStyle;
    dxgrdrprtlnkstylsht2: TdxGridReportLinkStyleSheet;
    procedure btnFilterClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetailPengeluaranPerPerkiraan: TfrmDetailPengeluaranPerPerkiraan;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmDetailPengeluaranPerPerkiraan.btnFilterClick(
  Sender: TObject);
begin
  if (DtTgl.Text = '') then
    DtTgl.EditValue := FPPeriodeAwal;
  if (Dt1.EditText = '') then
    Dt1.EditValue := FPPeriodeAkhir;
  if (cek_kosong(0)) then
  begin
    with qryDataPengeluaran do
    begin
      Close;
      Parameters[0].Value := cbblkpSource.EditValue;
      Parameters[1].Value := FormatDateTime('YYYY-MM-DD', DtTgl.Date);
      Parameters[2].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
      Open;
    end;
    //dxgrdrprtlnkdxcmpntprntr1Link1.ReportTitle.Text:='Penggunaan Perkiraan '+cbblkpSource.Text;
    //dxgrdrprtlnkdxcmpntprntr1Link1.PreviewWindow.wi
    //dxgrdrprtlnkdxcmpntprntr1Link1.Preview();
  end;
end;

procedure TfrmDetailPengeluaranPerPerkiraan.FormShow(Sender: TObject);
begin
  if (DtTgl.Text = '') then
    DtTgl.EditValue := FPPeriodeAwal;
  if (Dt1.EditText = '') then
    Dt1.EditValue := FPPeriodeAkhir;
end;

procedure TfrmDetailPengeluaranPerPerkiraan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

end.

