unit uRichEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvButton, JvCtrls, JvFooter, ExtCtrls,
  JvExExtCtrls, JvExtComponent, ToolWin, ComCtrls, JvRichEdit;

type
  TfmRichEditor = class(TForm)
    jvreInfo: TJvRichEdit;
    ToolBar1: TToolBar;
    JvFooter1: TJvFooter;
    btnOK: TJvFooterBtn;
    btnCancel: TJvFooterBtn;
    tbBold: TToolButton;
    tbItalic: TToolButton;
    tbUnderline: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRichEditor: TfmRichEditor;

implementation

{$R *.dfm}

end.
