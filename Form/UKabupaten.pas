unit UKabupaten;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, 
  cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, StdCtrls, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, dxGDIPlusClasses, pngimage, ExtCtrls, ADODB,Kabupaten, UGeneral,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxLayoutLookAndFeels,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmKabupaten = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytcntrl1: TdxLayoutControl;
    grid1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    btnBatal: TcxButton;
    btnBaru: TcxButton;
    btnSimpan: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    dxlytm1: TdxLayoutItem;
    eKode: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    qry: TADOQuery;
    ds: TDataSource;
    cxgrdbclmnGrid1DBTableView1kode_kab: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nama_kab_kota: TcxGridDBColumn;
    eNama: TcxTextEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gcolmGrid1DBTableView1Alias: TcxGridDBColumn;
    eSingkat: TcxTextEdit;
    lbldxlytcntrl1Item1: TdxLayoutItem;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FKabupaten:TFKabupaten;
  public
    { Public declarations }
  end;

var
  FrmKabupaten: TFrmKabupaten;

implementation

uses
  UControl, cxGridDBDataDefinitions;


{$R *.dfm}

procedure TFrmKabupaten.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmKabupaten.btnSimpanClick(Sender: TObject);
begin
  with FKabupaten do
  begin
      if (cek_kosong=True) then
      begin
        KodeKabupaten:=eKode.Text;
        NamaKabupaten:=eNama.Text;
        Alias:=eSingkat.text;
        KodeLama:=grid1.Hint;
        if(Self.Tag=1) then
        begin
          if Insert =TRUE then
            begin
              MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
              nonaktif_input(True,Self);
              set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
              kosongkanInputan(Self);
              qry.Close;
              qry.Open;
              Tag:=0;
            end
          else
            MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
        end else
        if(Self.Tag=2) then
        begin
          if Update =TRUE then
          begin
            MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
            nonaktif_input(True,Self);
            set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
            kosongkanInputan(Self);
            qry.Close;
            qry.Open;
            Tag:=0;
          end else
            MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
        end;
      end;
  end;

end;

procedure TFrmKabupaten.btnBaruClick(Sender: TObject);
begin
  set_button('dedde',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  nonaktif_input(False,Self);
  eKode.SetFocus;
  Tag:=1;
end;

procedure TFrmKabupaten.FormCreate(Sender: TObject);
begin
  FKabupaten:=TFKabupaten.Create(Self);
  nonaktif_input(True,Self);
  kosongkanInputan(Self);
  Koneksikan(qry);
  Logika_Button(False);
end;

procedure TFrmKabupaten.btnBatalClick(Sender: TObject);
begin
  set_button('edeed',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  kosongkanInputan(Self);
  Tag:=0;
  btnBaru.SetFocus;
  nonaktif_input(True,Self);

end;

procedure TFrmKabupaten.btnHapusClick(Sender: TObject);
begin
  if(qry.RecordCount>0) then
  begin
    FKabupaten.KodeKabupaten:=cxgrdbtblvwGrid1DBTableView1.Columns[1].DataBinding.Field.Value;
    if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      FKabupaten.Delete;
      qry.Close;
      qry.Open;     
  end;
end;

procedure TFrmKabupaten.btnUbahClick(Sender: TObject);
begin
  set_button('dedde',btnBaru,btnBatal,btnHapus,btnUbah,btnSimpan);
  nonaktif_input(False,Self);
  eKode.SetFocus;
  Tag:=2;
  eKode.Text:=cxgrdbtblvwGrid1DBTableView1.Columns[1].DataBinding.Field.AsString;
  eNama.Text:=cxgrdbtblvwGrid1DBTableView1.Columns[2].DataBinding.Field.AsString;
  eSingkat.Text:=cxgrdbtblvwGrid1DBTableView1.Columns[0].DataBinding.Field.AsString;
  grid1.Hint:=cxgrdbtblvwGrid1DBTableView1.Columns[1].DataBinding.Field.AsString;
end;

procedure TFrmKabupaten.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qry);
end;

end.
