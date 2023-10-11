unit UnitDataPembelianPupukObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Silver,
  dxSkinOffice2010Silver, dxSkinsdxNavBar2Painter, dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxSkinDarkSide;

type
  TFormDaftarDataPembelianPupukObat = class(TForm)
    pnlAtas: TPanel;
    pnlKiri: TPanel;
    dxnvbr1: TdxNavBar;
    dxnvbrgrpMenu: TdxNavBarGroup;
    dxnvbrtmTambah: TdxNavBarItem;
    dxnvbrtmUbah: TdxNavBarItem;
    dxnvbrtmHapus: TdxNavBarItem;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tanggalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1totalPembelian: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1modifUser: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    dxnvbrtmPembayaran: TdxNavBarItem;
    procedure dxnvbrtmTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDaftarDataPembelianPupukObat: TFormDaftarDataPembelianPupukObat;

implementation

{$R *.dfm}
uses UnitDm,UnitTambahDataPembelianPupukObat;

procedure TFormDaftarDataPembelianPupukObat.dxnvbrtmTambahClick(
  Sender: TObject);
begin
 Application.CreateForm(TFormTambahDataPembelianPupukObat, FormTambahDataPembelianPupukObat);
 ///FormTambahDataPembelianPupukObat.baru;
 FormTambahDataPembelianPupukObat.ShowModal;
end;

end.
