unit UNominal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, dxBar,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Menus,
  dxLayoutLookAndFeels, StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, cxCurrencyEdit, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB, UGeneral, Nominal,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, pngimage, ExtCtrls, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmNominal = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ceNominal: TcxCurrencyEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnTambah: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnBatal: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnUbah: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnHapus: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item8: TdxLayoutItem;
    cbJenisUang: TcxComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    qryNominal: TADOQuery;
    dsNominal: TDataSource;
    cxGrid1DBTableView1kode_nominal: TcxGridDBColumn;
    cxGrid1DBTableView1nominal: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_uang: TcxGridDBColumn;
    qryNominalkode_nominal: TSmallintField;
    qryNominalnominal: TFloatField;
    qryNominaljenis_uang: TStringField;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    LCILayoutControl1Item9: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure ceNominalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FNominal:TFNominal;
  public
    { Public declarations }
  end;

var
  frmNominal: TfrmNominal;

implementation

uses cxGridDBDataDefinitions;

{$R *.dfm}

procedure TfrmNominal.FormCreate(Sender: TObject);
begin
 FNominal:=TFNominal.Create(Self);
 Logika_Button(False);
 Koneksikan;//(qryNominal);
end;

procedure TfrmNominal.btnTambahClick(Sender: TObject);
begin
  Logika_Button(True);
  ceNominal.SetFocus;
  Self.Tag:=1;
end;

procedure TfrmNominal.ceNominalClick(Sender: TObject);
begin
 ceNominal.SelectAll;
end;

procedure TfrmNominal.btnBatalClick(Sender: TObject);
begin
  ceNominal.SetFocus;
  Logika_Button(False);
end;

procedure TfrmNominal.btnSimpanClick(Sender: TObject);
begin
  with FNominal do
  begin
    nominal:=ceNominal.EditValue;
    jenis_uang:=cbJenisUang.Text;
    if (Self.Tag=1) then
    begin
      if Insert then
      begin
        MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
        refresh_AdoQuery(qryNominal);
        Logika_Button(False);
      end else
        MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
    end else
    if (Self.Tag=2) then
    begin
      kode_nominal:=StrToInt(cxGrid1.Hint);
      if Update then
      begin
        MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
        refresh_AdoQuery(qryNominal);
        Logika_Button(False);
      end else
        MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
    end;
  end;
end;

procedure TfrmNominal.btnUbahClick(Sender: TObject);
begin
  Logika_Button(True);
  Self.Tag:=2;
  ceNominal.SetFocus;
  ceNominal.EditValue:=cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value;
  cbJenisUang.Text:=cxGrid1DBTableView1.Columns[2].DataBinding.Field.Value;
  cxGrid1.Hint:=IntToStr(cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value);
end;

procedure TfrmNominal.btnHapusClick(Sender: TObject);
begin
  with FNominal do
  begin
    if (qryNominal.RecordCount>0) then
    begin
      kode_nominal:=StrToInt(cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value);
      if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      Delete;
      refresh_AdoQuery(qryNominal);
    end;
  end;
end;

procedure TfrmNominal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TfrmNominal.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qryNominal);
end;

end.
