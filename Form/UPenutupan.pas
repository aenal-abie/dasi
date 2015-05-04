unit UPenutupan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, UGeneral, SaldoHarian, cxGraphics,
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
  dxLayoutcxEditAdapters, Menus, cxContainer, cxEdit, dxLayoutLookAndFeels,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtons, UThread,
  DateUtils, cxLookAndFeels, cxProgressBar;

type
  TfrmPenutupanError = class(TFGeneral)
    ADOQuery1: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    ADOConnection1: TADOConnection;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    mmoPesan: TMemo;
    btn2: TcxButton;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    DtPenutupanTerakhir: TcxDateEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    DtMulaiPenutupan: TcxDateEdit;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    DtSampaiPenutupan: TcxDateEdit;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    pgrsbrProses: TcxProgressBar;
    LCIdxlytcntrl1Item6: TdxLayoutItem;
    btn1: TcxButton;
    LCIdxlytcntrl1Item7: TdxLayoutItem;
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
    FSaldoHarian: TSaldoHarian;
    FTH: TEiThreadDatabase;
    function add(tgl: string): Boolean;
    function hitung_saldo(tgl_skrg, tgl_sblm: TDate): Double;
    procedure eksekusi(sender: TObject);
    function getKodePenyimpanan: string;

  public
    { Public declarations }
  end;

var
  frmPenutupanError: TfrmPenutupanError;

implementation

uses UKoneksi;

{$R *.dfm}

function TfrmPenutupanError.add(tgl: string): Boolean;
var
  ada: Boolean;
begin
  ada := False;
  with ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from tbl_transaksi_harian tb where DATE_FORMAT(tb.tanggal,"%Y-%m-%d")="' + tgl + '"');
    Open;
  end;
  if ADOQuery1.RecordCount < 1 then
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from tbl_pengeluaran tb where DATE_FORMAT(tb.tanggal,"%Y-%m-%d")="' + tgl + '"');
      Open;
    end;
    if ADOQuery1.RecordCount > 0 then
      ada := True;
  end
  else
    ada := True;
  Result := ada;
end;

procedure TfrmPenutupanError.btn2Click(Sender: TObject);
begin
  //mmoPesan.Lines.Add(BoolToStr(add('2014-08-11')));
  //mmoPesan.Lines.Add(IntToStr(DaysBetween(DtMulaiPenutupan.Date,DtSampaiPenutupan.Date)));
  if (DtPenutupanTerakhir.Date >= DtMulaiPenutupan.Date) then
  begin
    MessageBox(Handle,
      'Tanggal penutupan terakhir dengan mulai penutupan harus lebih kecil.',
      'Perhatian', MB_OK);
    Exit;
  end
  else if ((cek_kosong = False)) then
    exit
  else if ((MessageDlg('Anda yakin akan melakukan penutupan?,' + #13
    + ' data setelah tanggal ' + DateToStr(DtPenutupanTerakhir.Date) +
    ' akan dihapus', mtConfirmation, [mbOK,
    mbCancel], 0) = mrOk)) then
  begin
    FTH.Count := 50;
    FTH.OnExecute := eksekusi;
    FTH.RunThread;
  end;
end;

function TfrmPenutupanError.hitung_saldo(tgl_skrg, tgl_sblm: TDate): Double;
begin
  FSaldoHarian.Tanggal := tgl_skrg;
  FSaldoHarian.Tgl_sblmnya := tgl_sblm;
  FSaldoHarian.SaldoAwal;
  //eCrTotalPenerimaan.Value := FSaldoHarian.TotalPenerimaan;
  //eCrSaldoPengeluaran.Value := FSaldoHarian.TotalPengeluaran;
  //eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTotalPenerimaan.Value -
    //eCrSaldoPengeluaran.Value;
  Result := FSaldoHarian.saldoAwalAktual + FSaldoHarian.TotalPenerimaanKas -
    FSaldoHarian.TotalPengeluaranKas;
  //ShowMessage(FloatToStr(SaldoAkutal));
end;

procedure TfrmPenutupanError.FormCreate(Sender: TObject);
begin
  FSaldoHarian := TSaldoHarian.Create(nil);
  FTH := TEiThreadDatabase.Create(nil);
end;

procedure TfrmPenutupanError.eksekusi(sender: TObject);
var
  tgl, tgl_seb: TDate;
  hari: string;
begin
  try
    btn1.Enabled := False;
    pgrsbrProses.Properties.Min := 0;
    pgrsbrProses.Properties.Max := DaysBetween(DtMulaiPenutupan.Date,
      DtSampaiPenutupan.Date);
    ADOKoneksi.Mulai_Transaksi;
    mmoPesan.Clear;
    ADOKoneksi.eksekusi_sql('delete from tbl_saldo_harian where tbl_saldo_harian.tgl>"' + FormatDateTime('YYY-MM-DD', DtPenutupanTerakhir.Date) + '"');
    // pengambilan saldo awal untuk memulai transaksi
    tgl_seb := DtPenutupanTerakhir.Date;
    // mulai tanggal berapa
    tgl := DtMulaiPenutupan.Date;
    pgrsbrProses.Position := 0;
    while (tgl <= DtSampaiPenutupan.Date) do
      // lakukan penutupan sampai tanggal berapa
    begin
      hari := FormatDateTime('dddd', tgl);
      if (add(FormatDateTime('yyyy-mm-dd', tgl)) = true) then
      begin

        FSaldoHarian.SaldoAkhirKas := hitung_saldo(tgl, tgl_seb);
        mmoPesan.Lines.Add(hari + ', ' + FormatDateTime('dd/mm/yyyy', tgl));
        tgl_seb := tgl;
        //      ADOStoredProc1.Parameters[0].Value:=1;
        //      ADOStoredProc1.Parameters[1].Value:=FormatDateTime('yyyy/mm/dd',tgl);
        //      ADOStoredProc1.ExecProc;
        FSaldoHarian.Kode_Penyimpanan := getKodePenyimpanan;
        mmoPesan.Lines.Add('Saldo Awal  : ' +
          FormatFloat('###,###,###', FSaldoHarian.SaldoAwal));
        mmoPesan.Lines.Add('Saldo Penerimaan  :' +
          FormatFloat('###,###,###', FSaldoHarian.TotalPenerimaan));
        mmoPesan.Lines.Add('Saldo Pengeluaran   : ' +
          FormatFloat('###,###,###', FSaldoHarian.TotalPengeluaran));
        mmoPesan.Lines.Add('Saldo Akhir   : ' +
          FormatFloat('###,###,###', FSaldoHarian.SaldoAwal +
          FSaldoHarian.TotalPenerimaanKas -
          FSaldoHarian.TotalPengeluaranKas));
        FSaldoHarian.Tutup;
        FSaldoHarian.kosongkan_list;
        mmoPesan.Lines.Add('--------------------------------------------------------')
      end;
      tgl := IncDay(tgl, 1);
      pgrsbrProses.Position := pgrsbrProses.Position + 1;
    end;
    ADOKoneksi.Selesai_Transaksi;
    btn1.Enabled := True;
  except
    btn1.Enabled := true;
    ADOKoneksi.Batalkan_Transaksi;
    MessageBox(Handle, 'Kesalahan', 'Terjadi Kesalahan', MB_OK);
  end;

end;

function TfrmPenutupanError.getKodePenyimpanan: string;
var
  sql: string;
  ado: TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  sql :=
    'SELECT st.value FROM `tbl_setting` as st where  st.setting_name="penyimpanan"';
  ADOKoneksi.lihat_hasil(ado, sql);
  Result := ado.fieldbyname('value').AsString;
  ado.Free;
end;

procedure TfrmPenutupanError.btn1Click(Sender: TObject);
begin
  Close;
end;

end.

