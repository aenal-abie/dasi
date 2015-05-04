unit UKencrengan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, dxLayoutControl, 
  cxDataStorage, cxEdit, DB, cxDBData,
  dxLayoutLookAndFeels, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  DBClient, Provider, ADODB, cxCheckBox, ActnList, UGeneral, Menus,
  StdCtrls, cxButtons, UKoneksi, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxSpinEdit, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TfrmKencrengan = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxPageControl1: TcxPageControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxTabSheet1: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qryKencrengan: TADOQuery;
    dspKencrengan: TDataSetProvider;
    cdsKencrengan: TClientDataSet;
    dsKencrengan: TDataSource;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn;
    cxGrid1DBTableView1kode_nominal: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1pilih: TcxGridDBColumn;
    cdsKencrengankode_nominal: TSmallintField;
    cdsKencrengannominal: TFloatField;
    cdsKencrenganjumlah: TFloatField;
    cxGrid1DBTableView1nominal: TcxGridDBColumn;
    cdsKencrengancalcJml: TCurrencyField;
    cdsKencrenganjenis_uang: TStringField;
    cxGrid1DBTableView1calcJml: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_uang: TcxGridDBColumn;
    cdsKencrenganpilih: TBooleanField;
    cdsKencrenganqty: TSmallintField;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxButton1: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnOK: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    speJumlahKencrengan: TcxSpinEdit;
    lblLayoutControl1Item4: TdxLayoutItem;
    procedure cdsKencrenganCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    jml: Currency;
    procedure setKencrengan(pNoKwitansi: string; jumlah: Byte);
  end;

var
  frmKencrengan: TfrmKencrengan;

implementation

uses UTransaksi;

{$R *.dfm}

procedure TfrmKencrengan.cdsKencrenganCalcFields(DataSet: TDataSet);
begin
  cdsKencrengancalcJml.Value := cdsKencrengannominal.Value *
    cdsKencrenganqty.Value;
end;

procedure TfrmKencrengan.FormCreate(Sender: TObject);
begin
  qryKencrengan.Connection := ADOKoneksi;
  qryKencrengan.Open;
  cdsKencrengan.Open;
  qryKencrengan.Close;
end;

procedure TfrmKencrengan.btnOKClick(Sender: TObject);
begin
  if (Self.Tag = 1) then
    Release
  else
  begin
    with frmTransaksi do
    begin
      with cdsKencrengan do
      begin
        jml := 0;
        First;
        while not Eof do
        begin
          if cdsKencrenganpilih.AsBoolean = true then
            jml := jml + cdsKencrengancalcJml.Value;
          cdsKencrengan.Next;
        end;
      end;
      CDSTransaksi.Edit;
      if (eCrTambah.Tag > 0) then
      begin
        CDSTransaksisubtotal.Value := jml * ((100 - eCrTambah.Tag) / 100);
        eCrTambah.Value := ((eCrTambah.tag / 100) * jml);
        eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTambah.Value;
      end
      else
        CDSTransaksisubtotal.Value := jml;
      CDSTransaksiketerangan.Value := 'K';
      FCDSTransaksijumlah.Value := speJumlahKencrengan.Value;
      CDSTransaksi.Post;
    end;
    if jml > 0 then
      hide
    else
      ShowMessage('Tidak ada nominal yang dipilih.' + chr(10) +
        'Silahkan pilih nominal.');
  end;
end;

procedure TfrmKencrengan.cxButton1Click(Sender: TObject);
begin
  Release;
end;

procedure TfrmKencrengan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmKencrengan.setKencrengan(pNoKwitansi: string; jumlah: Byte);
var
  AdoQry: TADOQuery;
begin
  try
    AdoQry := nil;
    AdoQry := TADOQuery.Create(Self);
    AdoQry.Connection := ADOKoneksi;
    speJumlahKencrengan.EditValue := jumlah;
    ADOKoneksi.lihat_hasil(AdoQry,
      'select*from tbl_kencrengan where kode_kwitansi=''' + pNoKwitansi + '''');
    cdsKencrengan.Open;
    with AdoQry do
    begin
      First;
      while not Eof do
      begin
        if cdsKencrengan.Locate('kode_nominal',
          AdoQry.FieldValues['kode_nominal'], []) then
        begin
          cdsKencrengan.Edit;
          cdsKencrenganpilih.AsBoolean := True;
          cdsKencrenganqty.Value := AdoQry.FieldValues['qty'];
          cdsKencrengan.Post;
        end;
        AdoQry.Next;
      end;
    end;
  finally
    AdoQry.Free;
  end;
end;

end.

