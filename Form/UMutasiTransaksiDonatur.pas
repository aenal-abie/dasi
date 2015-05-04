unit UMutasiTransaksiDonatur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, pngimage, ExtCtrls, cxControls,
  dxLayoutLookAndFeels, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxButtonEdit, cxCheckBox,
  cxLookAndFeels;

type
  TfrmMutasiTransaksiDonatur = class(TForm)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn5: TcxButton;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    eDonatur: TcxButtonEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    eDonaturTujuan: TcxButtonEdit;
    cbxHapusDonatur: TcxCheckBox;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    btnBatal: TcxButton;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    btnProses: TcxButton;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure eDonaturTujuanPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMutasiTransaksiDonatur: TfrmMutasiTransaksiDonatur;

implementation

uses UFindDonatur, UKoneksi;

{$R *.dfm}

procedure TfrmMutasiTransaksiDonatur.eDonaturPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  frmFindDonatur := TfrmFindDonatur.Create(nil);
  with frmFindDonatur do
  begin
    if (ShowModal = mrOk) then
    begin
      eDonatur.EditValue :=
        gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      eDonatur.Hint := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
    end;
  end;
  FreeAndNil(frmFindDonatur);
end;

procedure TfrmMutasiTransaksiDonatur.eDonaturTujuanPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  frmFindDonatur := TfrmFindDonatur.Create(nil);
  with frmFindDonatur do
  begin
    if (ShowModal = mrOk) then
    begin
      eDonaturTujuan.EditValue :=
        gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      eDonaturTujuan.Hint :=
        gcolmDonaturkode_donatur.DataBinding.Field.AsString;
    end;
  end;
  FreeAndNil(frmFindDonatur);
end;

procedure TfrmMutasiTransaksiDonatur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMutasiTransaksiDonatur.btnProsesClick(Sender: TObject);
var
  msg: string;
begin
  if (MessageBox(Handle, 'Anda Yakin Mau Mutasi Data Transaksi Donatur Ini',
    'Mutasi Transaksi', MB_ICONWARNING + MB_OKCANCEL) = mrOk) then
  begin
    if (eDonatur.Hint <> '') and (eDonaturTujuan.Hint <> '') then
    begin
      ADOKoneksi.eksekusi_sql('update tbl_transaksi_harian set kode_donatur="' +
        eDonaturTujuan.Hint + '" where kode_donatur="' +
        eDonatur.Hint + '"');
      msg := 'Berhasil Memindahkan Transaksi';

      if (cbxHapusDonatur.Checked = true) then
      begin
        ADOKoneksi.eksekusi_sql(Format('call sp_del_donatur("%s") ',
          [eDonatur.Hint]));
        msg := msg + #13 + 'dan data donatur asal sudah dihapus';
      end;
      MessageBox(Handle, PChar(msg), 'Informasi Mutasi', MB_ICONINFORMATION +
        MB_OK);
    end;
  end;
end;

end.

