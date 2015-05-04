unit URekapPendapatanPeramil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Menus, cxStyles, 
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControl, ADODB, 
  cxGrid, dxLayoutLookAndFeels, StdCtrls, pngimage, ExtCtrls,
  cxCurrencyEdit, cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxButtons, cxPC, dxLayoutControlAdapters, ppViewr, ppParameter, ppBands,
  ppStrtch, ppCTMain, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, UHijriah, UGeneral, ActnList,
  cxCustomPivotGrid, cxDBPivotGrid, cxCheckBox, dxPSGlbl, dxPSUtl,
  dxBkgnd, dxWrap, dxPrnDev, 
  dxPSFillPatterns, dxPSEdgePatterns, 
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPSCore, dxPScxCommon, dxPScxPivotGrid2Lnk,
  cxLookAndFeels, cxCustomData, cxFilter, cxData, dxPSEngn, dxPrnPg,
  dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport;

type
  TfrmRekapPenerimaanAmil = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    cbbPeriode: TcxExtLookupComboBox;
    dxlytgrp1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytmLayoutControl1Item4: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    spRekap: TADOStoredProc;
    dsRekap: TDataSource;
    cxgrdvwrpstryPeriode: TcxGridViewRepository;
    dsPeriode: TDataSource;
    qryPeriode: TADOQuery;
    cxpgcntrl1: TcxPageControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl2: TdxLayoutControl;
    dxlytcntrl3: TdxLayoutControl;
    pvwr: TppViewer;
    btn6: TcxButton;
    cmbZoom: TcxComboBox;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    hjrhCetak: THijriah;
    pdbpln1: TppDBPipeline;
    prprtRekap: TppReport;
    prmtrlst1: TppParameterList;
    gridRekap: TcxGridDBTableView;
    gcolmRekapkode_amil: TcxGridDBColumn;
    gcolmRekapnama_amil: TcxGridDBColumn;
    gcolmRekapalamat: TcxGridDBColumn;
    gcolmRekaptotal: TcxGridDBColumn;
    gridPeriode: TcxGridDBTableView;
    gcolmPeriodeline: TcxGridDBColumn;
    gcolmPeriodethn_fiskal: TcxGridDBColumn;
    gcolmPeriodetgl_mulai: TcxGridDBColumn;
    gcolmPeriodetgl_akhir: TcxGridDBColumn;
    gcolmPeriodestatus_penutupan: TcxGridDBColumn;
    cxdbpvtgrd1: TcxDBPivotGrid;
    lbldxlytcntrl2Item1: TdxLayoutItem;
    cxdbpvtgrdfldcxdbpvtgrd1kode_amil: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1nama_amil: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1total: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1header: TcxDBPivotGridField;
    LCIdxlytcntrl3Item1: TdxLayoutItem;
    cbxland: TcxCheckBox;
    LCIdxlytcntrl3Item2: TdxLayoutItem;
    btn4: TcxButton;
    phdrbnd1: TppHeaderBand;
    pmg1: TppImage;
    plbl2: TppLabel;
    plblTanggal: TppLabel;
    pcrstb1: TppCrossTab;
    lblLpdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    plbl1: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl5: TppLabel;
    dxcmpntprntr1: TdxComponentPrinter;
    gridPrintPenerimaan: TcxPivotGridReportLink;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    btn1: TcxButton;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    procedure cbbPenerimaanPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure pcrstb1GetCaptionText(Sender: TObject; aElement: TppElement;
      aColumn, aRow: Integer; const aDisplayFormat: string;
      aValue: Variant; var aText: string);
    procedure pcrstb1GetTotalCaptionText(Sender: TObject;
      aElement: TppElement; aColumn, aRow: Integer; var aText: string);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRekapPenerimaanAmil: TfrmRekapPenerimaanAmil;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmRekapPenerimaanAmil.cbbPenerimaanPropertiesChange(Sender:
  TObject);
begin
  if (cbxland.Checked = True) then
    prprtRekap.Template.FileName := ExtractFilePath(Application.ExeName) +
      'template\rekap_kumpulan per amil-land.rtm'
  else
    prprtRekap.Template.FileName := ExtractFilePath(Application.ExeName) +
      'template\rekap_kumpulan per amil.rtm';
  prprtRekap.Template.LoadFromFile;
  hjrhCetak.TangalMasehi :=
    gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime;
  hjrhCetak.TanggalHijriah;
  plblTanggal.Text := 'Periode Bulan ' + hjrhCetak.BulanHijriah + ' ' +
    hjrhCetak.TahunHijriah + ' H / ' + FormatDateTime('MMMM YYYY',
    gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime) + ' M';
  spRekap.Close;
  spRekap.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
  spRekap.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
  spRekap.Open;
  prprtRekap.PrintToDevices;
end;

procedure TfrmRekapPenerimaanAmil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRekapPenerimaanAmil.FormCreate(Sender: TObject);
begin
  cbbPeriode.EditValue := FPPeriode;
end;

procedure TfrmRekapPenerimaanAmil.btn6Click(Sender: TObject);
begin
  pvwr.Print;
end;

procedure TfrmRekapPenerimaanAmil.btnFirstClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmRekapPenerimaanAmil.btnPriorClick(Sender: TObject);
begin
  pvwr.PriorPage;
end;

procedure TfrmRekapPenerimaanAmil.cmbZoomPropertiesChange(Sender: TObject);
begin
  try
    if (cmbZoom.Text <> '') then
    begin
      case cmbZoom.ItemIndex of
        0: pvwr.ZoomPercentage := 50;
        1: pvwr.ZoomPercentage := 100;
        2: pvwr.ZoomPercentage := 150;
      else
        pvwr.ZoomPercentage := StrToInt(cmbZoom.Text);
      end;
    end;
  except
    MessageBox(Handle, 'Format Salah', 'Zoom', MB_ICONWARNING + MB_OK);
  end;

end;

procedure TfrmRekapPenerimaanAmil.btnNextClick(Sender: TObject);
begin
  pvwr.NextPage;
end;

procedure TfrmRekapPenerimaanAmil.btnLastClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmRekapPenerimaanAmil.pcrstb1GetCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer;
  const aDisplayFormat: string; aValue: Variant; var aText: string);
begin
  if (aText = 'Sum of total') then
    aText := 'Rekap '
  else if (aText = 'kode_amil') then
    aText := 'Kode Amil'
  else if (aText = 'header') then
    aText := 'Jenis ZISWAF'
  else if (aText = 'nama_amil') then
    aText := 'Nama Amil';

end;

procedure TfrmRekapPenerimaanAmil.pcrstb1GetTotalCaptionText(
  Sender: TObject; aElement: TppElement; aColumn, aRow: Integer;
  var aText: string);
begin
  aText := 'Total Akhir';
end;

procedure TfrmRekapPenerimaanAmil.btn4Click(Sender: TObject);
begin
  cbbPenerimaanPropertiesChange(Sender);
end;

procedure TfrmRekapPenerimaanAmil.btn1Click(Sender: TObject);
begin
  gridPrintPenerimaan.RestoreFromOriginal;
  gridPrintPenerimaan.ReportTitle.Text:='Rekap Penerimaan Amil';
  gridPrintPenerimaan.Preview(True);
end;

end.

