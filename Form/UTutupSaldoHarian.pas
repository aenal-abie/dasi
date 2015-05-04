unit UTutupSaldoHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxDBExtLookupComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, Menus, cxButtons, 
  cxDataStorage, DB, cxDBData, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, dxLayoutLookAndFeels, ppDB,
  ppParameter, ppBands, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, UHijriah, dxLayoutControlAdapters,
  ppViewr, UGeneral, ppStrtch, ppCTMain,
  ppModule, raCodMod, cxCurrencyEdit, SaldoHarian, cxLookAndFeels;

type
  TfrmTtpSaldoHarian = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn1: TcxButton;
    btn2: TcxButton;
    hjrh1: THijriah;
    btn5: TcxButton;
    dxlytcntrl2: TdxLayoutControl;
    pvwrHarian: TppViewer;
    btn6: TcxButton;
    cmbZoom: TcxComboBox;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    prprtLlaporanHarian: TppReport;
    prmtrlst3: TppParameterList;
    pdbplnHarian: TppDBPipeline;
    dsLaporanHarian: TDataSource;
    spLaporanHarian: TADOStoredProc;
    dxlytlbldtmdxlytcntrl2LabeledItem1: TdxLayoutLabeledItem;
    DtHarian: TcxDateEdit;
    dxlytmdxlytcntrl2Item11: TdxLayoutItem;
    btn9: TcxButton;
    dxlytmdxlytcntrl2Item12: TdxLayoutItem;
    dxlytgrpdxlytcntrl2Group7: TdxLayoutGroup;
    dxlytsprtrtmdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    pfldHarianppField1: TppField;
    pfldHarianppField2: TppField;
    pfldHarianppField3: TppField;
    pfldHarianppField4: TppField;
    phdrbnd3: TppHeaderBand;
    pmg3: TppImage;
    lblLplbl12: TppLabel;
    pln5: TppLine;
    pln17: TppLine;
    pln18: TppLine;
    lblLSaldoAwal: TppLabel;
    lblLplbl14: TppLabel;
    lblLTanggal: TppLabel;
    lblLpdtlbnd3: TppDetailBand;
    pln1: TppLine;
    pln2: TppLine;
    pdbtxtnama_perkiraan: TppDBText;
    pdbtxtsubtotal: TppDBText;
    pln6: TppLine;
    pln7: TppLine;
    pln9: TppLine;
    pftrbnd3: TppFooterBand;
    psmrybnd2: TppSummaryBand;
    pln12: TppLine;
    pln11: TppLine;
    pln14: TppLine;
    pln15: TppLine;
    pgrp1: TppGroup;
    pgrphdrbnd1: TppGroupHeaderBand;
    pln4: TppLine;
    pdbtxtjenis: TppDBText;
    pln8: TppLine;
    pln3: TppLine;
    pgrpftrbnd1: TppGroupFooterBand;
    pln10: TppLine;
    pdbclcsubtotal1: TppDBCalc;
    pln13: TppLine;
    lblLplbl11: TppLabel;
    pdbtxtjenis1: TppDBText;
    pln16: TppLine;
    rcdmdl1: TraCodeModule;
    lblLSaldoAkhir: TppLabel;
    lblL2: TppLabel;
    batasdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytlbldtmdxlytcntrl2LabeledItem2: TdxLayoutLabeledItem;
    eCrSaldoAwal: TcxCurrencyEdit;
    lbldxlytcntrl2Item1: TdxLayoutItem;
    eCrTotalPenerimaan: TcxCurrencyEdit;
    lbldxlytcntrl2Item2: TdxLayoutItem;
    eCrSaldoPengeluaran: TcxCurrencyEdit;
    lbldxlytcntrl2Item3: TdxLayoutItem;
    eCrSaldoAkhir: TcxCurrencyEdit;
    lbldxlytcntrl2Item4: TdxLayoutItem;
    btn3: TcxButton;
    lbldxlytcntrl2Item5: TdxLayoutItem;
    batasdxlytcntrl2SeparatorItem2: TdxLayoutSeparatorItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    DtSbm: TcxDateEdit;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    btn4: TcxButton;
    LCIdxlytcntrl2Item2: TdxLayoutItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure pcrstb1GetTotalCaptionText(Sender: TObject;
      aElement: TppElement; aColumn, aRow: Integer; var aText: string);
    procedure pcrstb2GetTotalCaptionText(Sender: TObject;
      aElement: TppElement; aColumn, aRow: Integer; var aText: string);
    procedure FormCreate(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
    SaldoAkutal:Double;
    FSaldoHarian: TSaldoHarian;
    procedure hitung_saldo;
  private

  public
    { Public declarations }
  end;

var
  frmTtpSaldoHarian: TfrmTtpSaldoHarian;

implementation

uses
  UVariabel, UPenutupan;

{$R *.dfm}

procedure TfrmTtpSaldoHarian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTtpSaldoHarian.btnPriorClick(Sender: TObject);
begin
  pvwrHarian.PriorPage;
end;

procedure TfrmTtpSaldoHarian.btnNextClick(Sender: TObject);
begin
  pvwrHarian.NextPage;
end;

procedure TfrmTtpSaldoHarian.btnLastClick(Sender: TObject);
begin
  pvwrHarian.LastPage;
end;

procedure TfrmTtpSaldoHarian.cmbZoomPropertiesChange(Sender: TObject);
begin
  try
    if (cmbZoom.Text <> '') then
    begin
      case cmbZoom.ItemIndex of
        0: pvwrHarian.ZoomPercentage := 50;
        1: pvwrHarian.ZoomPercentage := 100;
        2: pvwrHarian.ZoomPercentage := 150;
      else
        pvwrHarian.ZoomPercentage := StrToInt(cmbZoom.Text);
      end;
    end;
  except
    MessageBox(Handle, 'Format Salah', 'Zoom', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TfrmTtpSaldoHarian.btn6Click(Sender: TObject);
begin
  pvwrHarian.Print;
end;

procedure TfrmTtpSaldoHarian.pcrstb1GetTotalCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer; var aText: string);
begin
  if (aText = 'Grand Total') then
    aText := 'Jumlah'
end;

procedure TfrmTtpSaldoHarian.pcrstb2GetTotalCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer; var aText: string);
begin
  aText := 'Total';
end;

procedure TfrmTtpSaldoHarian.FormCreate(Sender: TObject);
begin
  Koneksikan(spLaporanHarian);
  DtHarian.Date := Date;
  FSaldoHarian := TSaldoHarian.Create(nil);
  DtSbm.Date:=FSaldoHarian.tglKemarin;
  hitung_saldo;
end;

procedure TfrmTtpSaldoHarian.btn9Click(Sender: TObject);
begin
  hitung_saldo;
  pvwrHarian.Report := prprtLlaporanHarian;
  spLaporanHarian.Close;
  spLaporanHarian.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    DtHarian.Date);
  spLaporanHarian.Parameters[1].Value := FPPenyimpanan;
  //ShowMessage(FormatDateTime('YYYY-MM-DD',Dt1.Date));
  hjrh1.TangalMasehi := DtHarian.Date;
  lblLTanggal.Caption := FormatDateTime('DDDD', DtHarian.Date) + ', ' +
    hjrh1.TanggalHijriah + ' / ' + FormatDateTime('DD MMMM YYYY',
    DtHarian.Date);
  spLaporanHarian.Open;
  lblLSaldoAwal.Caption := eCrSaldoAwal.Text;
  lblLSaldoAkhir.Caption := eCrSaldoAkhir.Text;
  prprtLlaporanHarian.PrintToDevices;
end;

procedure TfrmTtpSaldoHarian.hitung_saldo;
begin
  FSaldoHarian.Tanggal := DtHarian.Date;
  FSaldoHarian.Tgl_sblmnya:=DtSbm.Date;
  eCrSaldoAwal.Value := FSaldoHarian.SaldoAwal;
  eCrTotalPenerimaan.Value := FSaldoHarian.TotalPenerimaan;
  eCrSaldoPengeluaran.Value := FSaldoHarian.TotalPengeluaran;
  eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTotalPenerimaan.Value -
    eCrSaldoPengeluaran.Value;
  SaldoAkutal:=FSaldoHarian.saldoAwalAktual+FSaldoHarian.TotalPenerimaanKas-FSaldoHarian.TotalPengeluaranKas;
  //ShowMessage(FloatToStr(SaldoAkutal));
end;

procedure TfrmTtpSaldoHarian.btn3Click(Sender: TObject);
begin
  if (DtHarian.Date <> Date) then
    MessageBox(Handle, 'Maaf tanggal bukan tanggal hari ini', '[Perhatian]',
      MB_OK + MB_ICONWARNING)
  else
  begin
    FSaldoHarian.SaldoAkhir := eCrSaldoAkhir.Value;
    FSaldoHarian.Kode_Penyimpanan := FPPenyimpanan;
    FSaldoHarian.SaldoAkhirKas:=SaldoAkutal;
    if MessageBox(Handle, 'Anda akan menutup saldo kas hari ini.' + #13#10 +
      'Jika anda memilih yes,maka transaksi untuk hari ini tidak akan bisa dilakukan lagi,'
      + #13#10 + 'baik pengeluaran maupun penerimaan. ' + #13#10 +
      'Jika ada transaksi lagi silahkan masukan hari berikutnya. ',
      'Tutup Saldo [Warning]', MB_YESNO + MB_ICONWARNING) = IDYES then
    begin
      try
        FSaldoHarian.Mulai_Transaksi;
        if (not FSaldoHarian.Tutup) then
          MessageBox(Handle, 'Saldo Hari Ini sudah ditutup sebelumnya .',
            'Tutup Saldo [Warning]', MB_OK + MB_ICONWARNING)
        else
          MessageBox(Handle, 'Saldo Hari ini Berhasil sudah ditutup. ' + #13#10
            +
            'Transaksi sudah tidak bisa  dilakukan  lagi.',
            'Tutup Saldo [Warning]', MB_OK + MB_ICONWARNING);
        FSaldoHarian.Selesai_Transaksi;
      except on E: exception do
        begin
          FSaldoHarian.Batalkan_Transaksi;
          MessageBox(Handle, PChar('Kesalahan pada :. ' + #13#10
            + e.Message),
            'Tutup Saldo [ERROR]', MB_OK + MB_ICONWARNING)
        end;
      end;
    end;
  end;
end;
procedure TfrmTtpSaldoHarian.btn4Click(Sender: TObject);
begin
  frmPenutupanError.ShowModal;
end;

end.

