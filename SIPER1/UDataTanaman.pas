unit UDataTanaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh;

type
  TFDataTanaman = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbnvgrAset: TDBNavigator;
    pnlAtas: TPanel;
    dbgrdhTanaman: TDBGridEh;
    cbbBln: TComboBox;
    pnlKeluar: TPanel;
    procedure btnKeluarClick(Sender: TObject);
    procedure dbgrdhTanamanDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataTanaman: TFDataTanaman;

implementation

{$R *.dfm}
uses Umodule;

procedure TFDataTanaman.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataTanaman.dbgrdhTanamanDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  dbgrdhTanaman.Columns[4].PickList := cbbBln.Items;
end;

procedure TFDataTanaman.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
