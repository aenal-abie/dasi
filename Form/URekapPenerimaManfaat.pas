unit URekapPenerimaManfaat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, 
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
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxRadioGroup, scExcelExport,
  cxLookAndFeels, cxCustomData, cxFilter, cxData, dxPSEngn, dxPrnPg,
  dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport;

type
  TfrmRekapPenerimaManfaat = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    DtTgl: TcxDateEdit;
    grid1: TcxGrid;
    gridMutasi: TcxGridDBTableView;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    dxlytgrp1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group5: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group6: TdxLayoutGroup;
    LCI1: TdxLayoutItem;
    LCIdxlytcntrl1Item11: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn5: TcxButton;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    qryData: TADOQuery;
    dsMutasi: TDataSource;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    Dt1: TcxDateEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnFilter: TcxButton;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
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
    gcolmMutasidari_perkiraan: TcxGridDBColumn;
    gcolmMutasinama_perkiraan: TcxGridDBColumn;
    gcolmMutasitotal: TcxGridDBColumn;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    cbbKab: TcxExtLookupComboBox;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    GridRepcxgrdvwrpstry1: TcxGridViewRepository;
    gridKab: TcxGridDBTableView;
    gcolmKabkode_kab: TcxGridDBColumn;
    gcolmKabnama_kab_kota: TcxGridDBColumn;
    gcolmKabalias: TcxGridDBColumn;
    spKabupaten: TADOStoredProc;
    FKabupatenkode_kab: TStringField;
    FKabupatennama_kab_kota: TStringField;
    FKabupatenalias: TStringField;
    dsKabupaten: TDataSource;
    rb1: TcxRadioButton;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    rb2: TcxRadioButton;
    LCIdxlytcntrl1Item6: TdxLayoutItem;
    FDatadari_perkiraan: TStringField;
    FDatanama_perkiraan: TStringField;
    bcdfldDatatotal: TBCDField;
    scxclxprtLap: TscExcelExport;
    procedure FormCreate(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRekapPenerimaManfaat: TfrmRekapPenerimaManfaat;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmRekapPenerimaManfaat.FormCreate(Sender: TObject);
begin
  //Koneksikan;
  Dt1.Date := Date;
  DtTgl.Date := Date;
end;

procedure TfrmRekapPenerimaManfaat.btnFilterClick(Sender: TObject);
begin
  with qryData do
  begin
    DisableControls;
    close;
    if (rb1.Checked = true) then
    begin
      SQL.Clear;
      sql.Add('CALL `sp_rekap_penerima_manfaat`(:p,:p2,:p3)');
    end
    else if (rb2.Checked = true) then
    begin
      SQL.Clear;
      sql.Add('CALL `sp_rekap_penerima_manfaat_keluar`(:p,:p2,:p3)');
    end;

    Parameters[0].Value := FormatDateTime('YYYY-MM-DD', DtTgl.Date) +
      ' 00:00:00';
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date) + ' 23:59:59';
    if (cbbKab.EditText = '') then
      Parameters[2].Value := ''
    else
      Parameters[2].Value := cbbKab.EditValue;
    Open;
    EnableControls;
  end;

end;

procedure TfrmRekapPenerimaManfaat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRekapPenerimaManfaat.FormShow(Sender: TObject);
begin
  DtTgl.EditValue := FPPeriodeAwal;
  Dt1.EditValue := FPPeriodeAkhir;
end;

procedure TfrmRekapPenerimaManfaat.btn1Click(Sender: TObject);
begin
  {if (cbbKab.EditText = '') then
    kode_kab := 'Keseluruhan'
  else
    kode_kab := ' Kabupaten/Kota : ' + cbbKab.EditText;
  dxgrdrprtlnkGridPrintTransaski.ReportTitle.Text := 'Rekap Penerima Manfaat ' +
    kode_kab + #13 + ' Tanggal ' + FormatDateTime('DD/MM/YYYY',
    DtTgl.Date) + ' s/d ' +
    FormatDateTime('DD/MM/YYYY', Dt1.Date);
  dxgrdrprtlnkGridPrintTransaski.Preview(True);}

  scxclxprtLap.Disconnect();
  scxclxprtLap.LoadDefaultProperties;

  scxclxprtLap.HeaderText.Text := 'PENERIMAAN MANFAAT ';
  scxclxprtLap.WorksheetName := 'REKAP PENERIMAAN MANFAAT';

  scxclxprtLap.HeaderText.Add('');
  scxclxprtLap.FontHeader.Size := 14;
  scxclxprtLap.SummaryDisplayFormat := '###,###,###,##0';
  scxclxprtLap.SummarySelection := ssValues;
  scxclxprtLap.SummaryCalculation := scSUM;
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

end.

