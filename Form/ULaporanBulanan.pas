unit ULaporanBulanan;

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
  dxSkinscxPCPainter, Menus, 
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControl, ADODB, 
  cxGrid, dxLayoutLookAndFeels, StdCtrls, pngimage, ExtCtrls,
  cxCurrencyEdit, cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxButtons, cxPC, dxLayoutControlAdapters, ppViewr, ppParameter, ppBands,
  ppStrtch, ppCTMain, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, UHijriah, UGeneral, ActnList,
  ppModule, raCodMod, cxCustomPivotGrid, cxDBPivotGrid,
  cxCheckBox, scExcelExport, cxLookAndFeels, cxCustomData, cxStyles,
  cxFilter, cxData;

type
  TfrmLaporanBulanan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrp1: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    spPenerimaan: TADOStoredProc;
    dsRekap: TDataSource;
    hjrhCetak: THijriah;
    pdbplnPenerimaan: TppDBPipeline;
    prprtPenerimaan: TppReport;
    prmtrlst1: TppParameterList;
    gridPenerimaan: TcxGridDBTableView;
    dsPenyaluran: TDataSource;
    spPengeluaran: TADOStoredProc;
    prprtPengeluaran: TppReport;
    prmtrlst2: TppParameterList;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    dxlytcntrl2: TdxLayoutControl;
    dxlytgrp4: TdxLayoutGroup;
    cxtbsht3: TcxTabSheet;
    dxlytcntrl4: TdxLayoutControl;
    dxlytgrp3: TdxLayoutGroup;
    cxtbsht4: TcxTabSheet;
    dxlytcntrl3: TdxLayoutControl;
    pvwr: TppViewer;
    btn7: TcxButton;
    cmbZoom: TcxComboBox;
    btn8: TcxButton;
    btn9: TcxButton;
    btn10: TcxButton;
    btn11: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    cbbPeriode: TcxExtLookupComboBox;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    sp1: TADOStoredProc;
    ds1: TDataSource;
    gcolmPenerimaanNamaPerkiraan: TcxGridDBColumn;
    gcolmPenerimaanLOBAR: TcxGridDBColumn;
    gcolmPenerimaanLOTENG: TcxGridDBColumn;
    cxgrdvwrpstry2: TcxGridViewRepository;
    gridPengeluaran: TcxGridDBTableView;
    gcolm1: TcxGridDBColumn;
    gcolm2: TcxGridDBColumn;
    gcolm3: TcxGridDBColumn;
    sp2: TADOStoredProc;
    ds2: TDataSource;
    cxgrdvwrpstryPeriode: TcxGridViewRepository;
    gridPeriode: TcxGridDBTableView;
    gcolmPeriodeline: TcxGridDBColumn;
    gcolmPeriodethn_fiskal: TcxGridDBColumn;
    gcolmPeriodetgl_mulai: TcxGridDBColumn;
    gcolmPeriodetgl_akhir: TcxGridDBColumn;
    gcolmPeriodestatus_penutupan: TcxGridDBColumn;
    dsPeriode: TDataSource;
    qryPeriode: TADOQuery;
    pdbpln1: TppDBPipeline;
    lbl1: TLabel;
    lbldxlytcntrl4Item1: TdxLayoutItem;
    cxdbpvtgrd2: TcxDBPivotGrid;
    cxdbpvtgrdfldcxdbpvtgrd2kode_kab: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2sub_total: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd2nama_perkiraan: TcxDBPivotGridField;
    lbldxlytcntrl1Item1: TdxLayoutItem;
    btnCetak: TcxButton;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    cxdbpvtgrd1: TcxDBPivotGrid;
    lbldxlytcntrl2Item1: TdxLayoutItem;
    cxdbpvtgrdfldcxdbpvtgrd1kode_kab: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1subtotal: TcxDBPivotGridField;
    cxdbpvtgrdfldcxdbpvtgrd1nama_perkiraan: TcxDBPivotGridField;
    cbxexcel: TcxCheckBox;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    LCIdxlytcntrl3Item1: TdxLayoutItem;
    cbxland: TcxCheckBox;
    phdrbnd2: TppHeaderBand;
    pmg2: TppImage;
    lblplbl1: TppLabel;
    lblTgl: TppLabel;
    pcrstb1: TppCrossTab;
    lblLpdtlbnd2: TppDetailBand;
    pftrbnd2: TppFooterBand;
    psmrybnd2: TppSummaryBand;
    rcdmdl1: TraCodeModule;
    phdrbnd1: TppHeaderBand;
    pmg1: TppImage;
    lbl3: TppLabel;
    lblTanggal: TppLabel;
    pcrstb2: TppCrossTab;
    lblL1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    rcdmdl2: TraCodeModule;
    plbl2: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl5: TppLabel;
    plbl1: TppLabel;
    plbl6: TppLabel;
    plbl7: TppLabel;
    plbl8: TppLabel;
    scxclxprtLap: TscExcelExport;
    btnExport: TcxButton;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    cbxHeader: TcxCheckBox;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnViewClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure Dt1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbbPeriodePropertiesChange(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaporanBulanan: TfrmLaporanBulanan;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmLaporanBulanan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmLaporanBulanan.btnViewClick(Sender: TObject);
{var
  i: Integer;}
begin
  {  try

      sp2.Open;
      gridPengeluaran.BeginUpdate;
      gridPengeluaran.ClearItems;
      gridPengeluaran.DataController.CreateAllItems;
      gridPengeluaran.EndUpdate;
      gridPengeluaran.BeginUpdate;
      for i := 1 to gridPengeluaran.ColumnCount - 1 do
      begin
        gridPengeluaran.Columns[i].PropertiesClass := TcxCurrencyEditProperties;
      end;
      gridPengeluaran.EndUpdate;
    except
        gridPengeluaran.BeginUpdate;
      gridPengeluaran.ClearItems;
      gridPengeluaran.EndUpdate;
      MessageBox(Handle,'Data Kosong','Cek Data',MB_ICONWARNING+MB_OK);
    end; }
end;

procedure TfrmLaporanBulanan.btnFirstClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmLaporanBulanan.btnPriorClick(Sender: TObject);
begin
  pvwr.PriorPage;
end;

procedure TfrmLaporanBulanan.cmbZoomPropertiesChange(Sender: TObject);
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

procedure TfrmLaporanBulanan.btnNextClick(Sender: TObject);
begin
  pvwr.NextPage;
end;

procedure TfrmLaporanBulanan.btnLastClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmLaporanBulanan.Dt1PropertiesChange(Sender: TObject);
begin
  {  hjrhCetak.TangalMasehi := Dt1.Date;
    hjrhCetak.TanggalHijriah;
    plblTanggal.Text := FormatDateTime('DDDD', Dt1.Date) + ', ' +
      hjrhCetak.TanggalHijriah + ' / ' +
      FormatDateTime('DD MMMM YYYY',
      Dt1.Date) + ' M';
    spRekap.Close;
    spRekap.Parameters[0].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
    spRekap.Open;
    prprtRekap.PrintToDevices; }
end;

procedure TfrmLaporanBulanan.FormCreate(Sender: TObject);
begin
  Koneksikan(qryPeriode);
  cbbPeriode.EditValue := FPPeriode;
end;

procedure TfrmLaporanBulanan.cbbPeriodePropertiesChange(Sender: TObject);
begin
  spPenerimaan.DisableControls;
  spPenerimaan.Close;
  spPenerimaan.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
  spPenerimaan.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
    gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
  spPenerimaan.Open;
  spPenerimaan.EnableControls;

  spPengeluaran.DisableControls;
  spPengeluaran.Close;
  {ShowMessage(FormatDateTime('YYYY-MM-DD',
    gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime));}
  spPengeluaran.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
  spPengeluaran.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
    gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
  spPengeluaran.Open;
  spPengeluaran.EnableControls;
end;

procedure TfrmLaporanBulanan.btnExportClick(Sender: TObject);
begin
  scxclxprtLap.Disconnect();
  scxclxprtLap.LoadDefaultProperties;
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    scxclxprtLap.Dataset := sp2;
    sp2.DisableControls;
    sp2.Close;
    sp2.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    sp2.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
    sp2.Open;
    sp2.EnableControls;
    scxclxprtLap.HeaderText.Text := 'PENGELUARAN PERIODE : ' +
      FormatDateTime('DD MMMM YYYY',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime) + ' s/d ' +
      FormatDateTime('DD MMMM YYYY',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
    scxclxprtLap.WorksheetName := 'REKAP PENGELUARAN';
  end
  else if (cxpgcntrl1.ActivePageIndex = 0) then
  begin
    scxclxprtLap.Dataset := sp1;
    sp1.DisableControls;
    sp1.Close;
    sp1.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime);
    sp1.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
    sp1.Open;
    sp1.EnableControls;
    scxclxprtLap.HeaderText.Text := 'PENERIMAAN PERIODE : ' +
      FormatDateTime('DD MMMM YYYY',
      gcolmPeriodetgl_mulai.DataBinding.Field.AsDateTime) + ' s/d ' +
      FormatDateTime('DD MMMM YYYY',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime);
    scxclxprtLap.WorksheetName := 'REKAP PENERIMAAN';
  end;
  scxclxprtLap.HeaderText.Add('');
  scxclxprtLap.GroupFields.Clear;
  if cbxHeader.Checked=True then
    scxclxprtLap.GroupFields.Add('Header');
  scxclxprtLap.FontHeader.Size := 14;
  scxclxprtLap.SummaryDisplayFormat := '###,###,###,##0';
  scxclxprtLap.SummarySelection := ssValues;
  scxclxprtLap.SummaryCalculation := scSUM;
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

procedure TfrmLaporanBulanan.btn5Click(Sender: TObject);
var
  i: Integer;
begin
  sp1.Open;
  gridPenerimaan.BeginUpdate;
  gridPenerimaan.ClearItems;
  gridPenerimaan.DataController.CreateAllItems;
  gridPenerimaan.EndUpdate;
  gridPenerimaan.BeginUpdate;
  for i := 1 to gridPenerimaan.ColumnCount - 1 do
  begin
    gridPenerimaan.Columns[i].PropertiesClass := TcxCurrencyEditProperties;
  end;
  gridPenerimaan.EndUpdate;
end;

procedure TfrmLaporanBulanan.btn7Click(Sender: TObject);
begin
  pvwr.Print;
end;

procedure TfrmLaporanBulanan.btnCetakClick(Sender: TObject);
begin
  if (cxpgcntrl1.ActivePageIndex = 0) then
  begin
    if (cbxland.Checked = True) then
      prprtPenerimaan.Template.FileName := ExtractFilePath(Application.ExeName)
        + 'template\penerimaan-land.rtm'
    else
      prprtPenerimaan.Template.FileName := ExtractFilePath(Application.ExeName)
        + 'template\penerimaan.rtm';
    prprtPenerimaan.Template.LoadFromFile;
    hjrhCetak.TangalMasehi :=
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime;
    hjrhCetak.TanggalHijriah;
    lblTanggal.Text := 'Periode Bulan ' + hjrhCetak.BulanHijriah + ' ' +
      hjrhCetak.TahunHijriah + ' H / ' + FormatDateTime('MMMM YYYY',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime) + ' M';
    pvwr.Report := prprtPenerimaan;
    if (cbxexcel.Checked = true) then
    begin
      prprtPenerimaan.DeviceType := 'XLSReport';
      prprtPenerimaan.AllowPrintToFile := True;
      prprtPenerimaan.PrintReport;
    end
    else
    begin
      prprtPenerimaan.DeviceType := 'Screen';
      prprtPenerimaan.PrintToDevices;
      cxpgcntrl1.ActivePageIndex := 2;
    end;
  end
  else if (cxpgcntrl1.ActivePageIndex = 1) then
  begin
    if (cbxland.Checked = True) then
      prprtPengeluaran.Template.FileName := ExtractFilePath(Application.ExeName)
        +
        'template\pengeluaran-land.rtm'
    else
      prprtPengeluaran.Template.FileName := ExtractFilePath(Application.ExeName)
        +
        'template\pengeluaran.rtm';
    prprtPengeluaran.Template.LoadFromFile;
    hjrhCetak.TangalMasehi :=
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime;
    hjrhCetak.TanggalHijriah;
    lblTgl.Text := 'Periode Bulan ' + hjrhCetak.BulanHijriah + ' ' +
      hjrhCetak.TahunHijriah + ' H / ' + FormatDateTime('MMMM YYYY',
      gcolmPeriodetgl_akhir.DataBinding.Field.AsDateTime) + ' M';
    pvwr.Report := prprtPengeluaran;
    if (cbxexcel.Checked = true) then
    begin
      prprtPengeluaran.DeviceType := 'XLSReport';
      prprtPengeluaran.AllowPrintToFile := True;
      prprtPengeluaran.PrintReport;
    end
    else
    begin
      prprtPengeluaran.DeviceType := 'Screen';
      prprtPengeluaran.PrintToDevices;
      cxpgcntrl1.ActivePageIndex := 2;
    end;
  end;

end;

end.

