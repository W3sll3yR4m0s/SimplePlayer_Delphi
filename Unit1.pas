unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls, StdCtrls, Buttons, WinSkinData;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    SkinData1: TSkinData;
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 If OpenDialog1.Execute Then
 Begin
 MediaPlayer1.FileName := OpenDialog1.FileName;
 MediaPlayer1.Open;
 End;
end;

end.
