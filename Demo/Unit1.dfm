object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demo - DTCmed'
  ClientHeight = 263
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 376
    Top = 8
    Width = 121
    Height = 25
    Cursor = crHandPoint
    Caption = 'Obter Tabela CMED'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 39
    Width = 489
    Height = 194
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 239
    Width = 489
    Height = 17
    TabOrder = 2
  end
  object DTCmed1: TDTCmed
    URLCmed = 
      'https://www.gov.br/anvisa/pt-br/assuntos/medicamentos/cmed/preco' +
      's'
    Formulario = Owner
    ProgressBar = ProgressBar1
    Left = 232
    Top = 112
  end
end
