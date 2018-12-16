unit uSiPer;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  ComCtrls, Menus, Buttons;

type

  { TFSiPertanian }

  TFSiPertanian = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PanelTengah: TPanel;
    PanelAtas: TPanel;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure PanelAtasClick(Sender: TObject);
  private

  public

  end;

var
  FSiPertanian: TFSiPertanian;

implementation

{$R *.lfm}

uses uDataAset;

{ TFSiPertanian }

procedure TFSiPertanian.PanelAtasClick(Sender: TObject);
begin

end;

procedure TFSiPertanian.BitBtn1Click(Sender: TObject);
begin

end;

procedure TFSiPertanian.MenuItem3Click(Sender: TObject);
var
  data_s : TFDataAset;
begin
  data_s := TFDataAset.Create(nil);
  data_s.Parent:= PanelTengah;
  data_s.Align := alClient;
  data_s.Show
end;

end.

