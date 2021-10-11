object frmColourfulGrid: TfrmColourfulGrid
  Left = 214
  Top = 123
  Width = 890
  Height = 500
  Caption = 'Colorful Grid'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 882
    Height = 472
    Align = alClient
    ColCount = 24
    DefaultColWidth = 35
    DefaultRowHeight = 18
    RowCount = 24
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
  end
end
