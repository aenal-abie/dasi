unit UViewPerPerkiraan;

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
  cxLookAndFeels, cxCustomData, cxFilter, cxData, dxPSEngn, dxPrnPg,
  dxPSCompsProvider, dxPSPDFExportCore, dxPSPDFExport;

type
  TfrmTransaksiPePerkiraan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    DtTgl: TcxDateEdit;
    grid1: TcxGrid;
    gridMutasi: TcxGridDBTableView;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    cbblkpSource: TcxExtLookupComboBox;
    dxlytgrp1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group5: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group6: TdxLayoutGroup;
    LCI1: TdxLayoutItem;
    LCILayoutControl1Item14: TdxLayoutItem;
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
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    Dt1: TcxDateEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnFilter: TcxButton;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    gcolmMutasinama_lengkap: TcxGridDBColumn;
    gcolmMutasikode_donatur: TcxGridDBColumn;
    gcolmMutasikode_kwitansi: TcxGridDBColumn;
    gcolmMutasitanggal: TcxGridDBColumn;
    gcolmMutasisubtotal: TcxGridDBColumn;
    gcolmMutasinama_amil: TcxGridDBColumn;
    gcolmMutasisaldo_penyaluran: TcxGridDBColumn;
    gcolmMutasisaldo_operasional: TcxGridDBColumn;
    cxgrdlvlgrid1Level2: TcxGridLevel;
    cxgrdlvlgrid1Level3: TcxGridLevel;
    qryDataPengeluaran: TADOQuery;
    dsPengeluaran: TDataSource;
    gridPengeluaran: TcxGridDBTableView;
    gcolmgrid1DBTableView1kode_pengeluaran: TcxGridDBColumn;
    gcolmgrid1DBTableView1tanggal: TcxGridDBColumn;
    gcolmgrid1DBTableView1nama_perkiraan: TcxGridDBColumn;
    gcolmgrid1DBTableView1keterangan: TcxGridDBColumn;
    gcolmgrid1DBTableView1sub_total: TcxGridDBColumn;
    gridPeminjaman: TcxGridDBTableView;
    ds1: TDataSource;
    qryPeminjaman: TADOQuery;
    gcolmPeminjamanid: TcxGridDBColumn;
    gcolmPeminjamandari: TcxGridDBColumn;
    gcolmPeminjamanketerangan: TcxGridDBColumn;
    gcolmPeminjamanjumlah: TcxGridDBColumn;
    gcolmPeminjamanstatus: TcxGridDBColumn;
    gcolmPeminjamantgl: TcxGridDBColumn;
    gcolmPeminjamansumber: TcxGridDBColumn;
    gcolmPeminjamanke: TcxGridDBColumn;
    gcolmPeminjamantujuan: TcxGridDBColumn;
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
  frmTransaksiPePerkiraan: TfrmTransaksiPePerkiraan;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmTransaksiPePerkiraan.FormCreate(Sender: TObject);
begin
  //Koneksikan;
  Dt1.Date := Date;
  DtTgl.Date := Date;
end;

procedure TfrmTransaksiPePerkiraan.btnFilterClick(Sender: TObject);
begin
  with qryData do
  begin
    close;
    Parameters[0].Value := cbblkpSource.EditValue;
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', DtTgl.Date) +
      ' 00:00:00';
    Parameters[2].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date) + ' 23:59:00';
    Parameters[3].Value := FPOperasional;
    Open;
  end;
  with qryDataPengeluaran do
  begin
    Close;
    Parameters[0].Value := cbblkpSource.EditValue;
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', DtTgl.Date);
    Parameters[2].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
    Open;
  end;

  with qryPeminjaman do
  begin
    Close;
    Parameters[0].Value := cbblkpSource.EditValue;
    Parameters[1].Value := FormatDateTime('YYYY-MM-DD', DtTgl.Date);
    Parameters[2].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
    Open;
  end;

end;

procedure TfrmTransaksiPePerkiraan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTransaksiPePerkiraan.FormShow(Sender: TObject);
begin
  DtTgl.EditValue := FPPeriodeAwal;
  Dt1.EditValue := FPPeriodeAkhir;
end;

procedure TfrmTransaksiPePerkiraan.btn1Click(Sender: TObject);
begin
  dxgrdrprtlnkGridPrintTransaski.RestoreFromOriginal;
  if (cxgrdlvlgrid1Level1.Active = true) then
    dxgrdrprtlnkGridPrintTransaski.ReportTitle.Text := 'Rekap Penerimaan ' +
      cbblkpSource.EditText + ' Tanggal ' + FormatDateTime('DD/MM/YYYY',
      DtTgl.Date) + ' s/d ' +
      FormatDateTime('DD/MM/YYYY', Dt1.Date)
  else if (cxgrdlvlgrid1Level2.Active = true) then
    dxgrdrprtlnkGridPrintTransaski.ReportTitle.Text := 'Rekap Pengeluaran ' +
      cbblkpSource.EditText + ' Tanggal ' + FormatDateTime('DD/MM/YYYY',
      DtTgl.Date) + ' s/d ' +
      FormatDateTime('DD/MM/YYYY', Dt1.Date)
  else if (cxgrdlvlgrid1Level3.Active = true) then
    dxgrdrprtlnkGridPrintTransaski.ReportTitle.Text := 'Peminjaman/Dipinjam ' +
      cbblkpSource.EditText + ' Tanggal ' + FormatDateTime('DD/MM/YYYY',
      DtTgl.Date)
      + ' s/d ' +
      FormatDateTime('DD/MM/YYYY', Dt1.Date);
  dxgrdrprtlnkGridPrintTransaski.Preview(True);
end;

end.

