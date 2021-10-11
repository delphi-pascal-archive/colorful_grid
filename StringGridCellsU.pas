unit StringGridCellsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids;

type
  TfrmColourfulGrid = class(TForm)
    StringGrid1: TStringGrid;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmColourfulGrid: TfrmColourfulGrid;

implementation

{$R *.dfm}

uses
  GraphUtil;

procedure TfrmColourfulGrid.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1.Canvas do
  begin
    Brush.Color := ColorHLSToRGB(ACol * 10, 60 + ARow * 5, 120);
    FillRect(Rect);
    Font.Color := ColorHLSToRGB(((ACol * 10) + 120) mod 240, 60 + ARow * 5, 120);
    TextOut(Rect.Left, Rect.Top, Format('(%d,%d)', [ACol, ARow]));
  end
end;

procedure TfrmColourfulGrid.FormResize(Sender: TObject);
begin
  StringGrid1.DefaultRowHeight := ClientHeight div Succ(StringGrid1.RowCount);
  StringGrid1.DefaultColWidth := ClientWidth div Succ(StringGrid1.ColCount);
end;

initialization
  Randomize
end.
