unit uDataAset;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DBDateTimePicker, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, DBGrids, DbCtrls, StdCtrls, Grids;

type

  { TFDataAset }

  TFDataAset = class(TForm)
    ButtonKeluar: TButton;
    DBGridAset: TDBGrid;
    PanelAtas: TPanel;
    PanelTengah: TPanel;
    PanelBawah: TPanel;
    procedure ButtonKeluarClick(Sender: TObject);
    procedure DBGridAsetDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PanelAtasClick(Sender: TObject);
  private

  public

  end;

var
  FDataAset: TFDataAset;

implementation

{$R *.lfm}

{ TFDataAset }

uses uModule;

procedure TFDataAset.PanelAtasClick(Sender: TObject);
begin

end;

procedure TFDataAset.ButtonKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataAset.DBGridAsetDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
end;

end.

