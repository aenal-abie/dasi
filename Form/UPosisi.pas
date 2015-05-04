unit UPosisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, 
  cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, cxTextEdit, StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, dxGDIPlusClasses,
  pngimage, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, ADODB,UGeneral,Posisi,
  dxLayoutLookAndFeels, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TFrmPosisi = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytcntrl1: TdxLayoutControl;
    grid: TcxGrid;
    gridPosisi: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    btnBatal: TcxButton;
    btnTambah: TcxButton;
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
    spPosisi: TADOStoredProc;
    dsPosisi: TDataSource;
    gcolmPosisikode_posisi: TcxGridDBColumn;
    gcolmPosisiposisi: TcxGridDBColumn;
    ePosisi: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FPosisi:TFPosisi;
  public
    { Public declarations }
  end;

var
  FrmPosisi: TFrmPosisi;

implementation

{$R *.dfm}

procedure TFrmPosisi.btnTambahClick(Sender: TObject);
begin
  Logika_Button(Enabled);
  ePosisi.SetFocus;
  Tag:=1;
end;

procedure TFrmPosisi.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  Tag:=0;
end;

procedure TFrmPosisi.btnSimpanClick(Sender: TObject);
begin
  with FPosisi do
  begin
    if(cek_kosong=True) then
    begin
      Posisi:=ePosisi.Text;
      if(Self.Tag=1) then
      begin
        if FPosisi.Insert =TRUE then
        begin
          MessageBox(Handle,'Data berhasil ditambahkan','Tambah Data',MB_ICONINFORMATION+MB_OK);
          Logika_Button(False);
          Koneksikan(spPosisi);
        end
        else
          MessageBox(Handle,'Data gagal ditambah','Tambah Data',MB_ICONWARNING+MB_OK);
      end else
      if(Self.Tag=2)  then
      begin
        if FPosisi.Update =TRUE then
        begin
          MessageBox(Handle,'Data berhasil diubah','Ubah Data',MB_ICONINFORMATION+MB_OK);
          Logika_Button(False);
          Koneksikan(spPosisi);
        end
        else
          MessageBox(Handle,'Data gagal diubah','Ubah Data',MB_ICONWARNING+MB_OK);
      end;
    end;
  end;

end;

procedure TFrmPosisi.btnHapusClick(Sender: TObject);
begin
    if(spPosisi.RecordCount>0) then
  begin
    FPosisi.Kode:=gcolmPosisikode_posisi.DataBinding.Field.AsInteger;
    if MessageDlg('Anda Yakin Hapus ?',mtConfirmation,mbOKCancel,0)=mrok then
      FPosisi.Delete;
      Koneksikan(spPosisi);
  end;

end;

procedure TFrmPosisi.btnUbahClick(Sender: TObject);
begin
  Logika_Button(Enabled);
  Tag:=2;
  FPosisi.Kode:=gcolmPosisikode_posisi.DataBinding.Field.AsInteger;
  ePosisi.Text:=gcolmPosisiposisi.DataBinding.Field.AsString;
end;

procedure TFrmPosisi.FormCreate(Sender: TObject);
begin
  Logika_Button(False);
  FPosisi:=TFPosisi.Create(Application);
  Koneksikan(spPosisi);
end;

procedure TFrmPosisi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPosisi.Free;
  Action:=caFree;
end;

procedure TFrmPosisi.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(spPosisi);
end;

end.
