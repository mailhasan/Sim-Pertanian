unit UDataAset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, Mask,
  DBCtrlsEh, ComCtrls, DBCtrls;

type
  TFDataAset = class(TForm)
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbgrdhAset: TDBGridEh;
    dbnvgrAset: TDBNavigator;
    edtCari: TEdit;
    cbbKondisi: TComboBox;
    pnlKeluar: TPanel;
    procedure dbgrdhAsetDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure edtCariChange(Sender: TObject);
    procedure edtCariClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataAset: TFDataAset;

implementation

{$R *.dfm}
uses
  Umodule, DB, ADODB;

procedure TFDataAset.dbgrdhAsetDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  dbgrdhAset.Columns[3].PickList := cbbKondisi.Items;
end;

procedure TFDataAset.edtCariChange(Sender: TObject);
begin
  if (edtCari.Text = 'Masukan Nama') or (edtCari.Text = '') then
  begin
    with DataModuleSiper.qryAset do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_aset';
      Open;
    end;
  end
  else
  begin
    with DataModuleSiper.qryAset do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_aset where nmAset like "%' + edtCari.Text + '%"';
      Open;
    end;
  end;
end;

procedure TFDataAset.edtCariClick(Sender: TObject);
begin
  edtCari.Clear;
end;

procedure TFDataAset.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.

