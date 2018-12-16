unit ULokasiLahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, DBCtrls;

type
  TFLokasiLahan = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    edtCari: TEdit;
    pnlTengah: TPanel;
    dbgrdhLokasi: TDBGridEh;
    dbnvgrLokasi: TDBNavigator;
    pnlKeluar: TPanel;
    procedure btnkeluarClick(Sender: TObject);
    procedure edtCariClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLokasiLahan: TFLokasiLahan;

implementation

{$R *.dfm}
uses Umodule;

procedure TFLokasiLahan.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLokasiLahan.edtCariClick(Sender: TObject);
begin
  edtCari.Clear;
end;

procedure TFLokasiLahan.edtCariChange(Sender: TObject);
begin
if (edtCari.Text = 'Masukan Lokasi') or (edtCari.Text = '') then
  begin
    with DataModuleSiper.qryLokasi do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_lokasilahan';
      Open;
    end;
  end
  else
  begin
    with DataModuleSiper.qryLokasi do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_lokasilahan where lokasiLahan like "%' + edtCari.Text + '%"';
      Open;
    end;
  end;
end;

procedure TFLokasiLahan.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
