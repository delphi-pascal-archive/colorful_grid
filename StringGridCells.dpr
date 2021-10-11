program StringGridCells;

uses
  Forms,
  StringGridCellsU in 'StringGridCellsU.pas' {frmColourfulGrid};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmColourfulGrid, frmColourfulGrid);
  Application.Run;
end.
