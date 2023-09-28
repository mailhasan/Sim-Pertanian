unit UnitUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, dxLayoutLookAndFeels, StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxNavBar2Painter, cxClasses, dxNavBarBase, dxNavBarCollns,
  dxNavBar;

type
  TFormUtama = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    stat1: TStatusBar;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytwblkndfl1: TdxLayoutWebLookAndFeel;
    pnlKanan: TPanel;
    pnlAtasKanan: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    dxnvbr1: TdxNavBar;
    dxnvbrgrpPertanian: TdxNavBarGroup;
    dxnvbrgrpPETERNAKAN: TdxNavBarGroup;
    dxnvbrgrpLAPORAN: TdxNavBarGroup;
    dxnvbrtmDataLahan: TdxNavBarItem;
    dxnvbrtmDataLokasiLahan: TdxNavBarItem;
    dxnvbrtmKegiatanKelolaLahan: TdxNavBarItem;
    dxnvbrtmPengeluaran: TdxNavBarItem;
    dxnvbrtmPENDAPATAN: TdxNavBarItem;
    dxnvbrtmDataPegawai: TdxNavBarItem;
    dxnvbrgrpDATAMASTER: TdxNavBarGroup;
    procedure dxnvbrtmDataLahanClick(Sender: TObject);
    procedure dxnvbrtmDataLokasiLahanClick(Sender: TObject);
    procedure dxnvbrtmKegiatanKelolaLahanClick(Sender: TObject);
    procedure dxnvbrtmDataPegawaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUtama: TFormUtama;

implementation

{$R *.dfm}
uses UnitDataLokasiLahan,UnitDaftarDataJenisTanaman,UnitDaftarDataKegiatanKelolaLahan,UnitDaftarDataPegawai;

procedure TFormUtama.dxnvbrtmDataLahanClick(Sender: TObject);
begin
  Application.CreateForm(TFormDaftarDataLokasiLahan, FormDaftarDataLokasiLahan);
  FormDaftarDataLokasiLahan.ShowModal;
end;

procedure TFormUtama.dxnvbrtmDataLokasiLahanClick(Sender: TObject);
begin
 Application.CreateForm(TFormDaftarDataJenisTanaman, FormDaftarDataJenisTanaman);
 FormDaftarDataJenisTanaman.ShowModal;
end;

procedure TFormUtama.dxnvbrtmKegiatanKelolaLahanClick(Sender: TObject);
begin
 Application.CreateForm(TFormDaftarDataKegiatanKelolaLahan, FormDaftarDataKegiatanKelolaLahan);
 FormDaftarDataKegiatanKelolaLahan.ShowModal;
end;

procedure TFormUtama.dxnvbrtmDataPegawaiClick(Sender: TObject);
begin
 Application.CreateForm(TFormDAFTARDATAPEGAWAI, FormDAFTARDATAPEGAWAI);
 FormDAFTARDATAPEGAWAI.ShowModal;
end;

end.
