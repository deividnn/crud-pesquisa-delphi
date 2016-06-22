object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 403
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 455
    Top = 8
    Width = 98
    Height = 22
    Caption = 'Pesquisar'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 8
    Top = 373
    Width = 97
    Height = 22
    Caption = 'Novo'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 640
    Top = 373
    Width = 86
    Height = 22
    Caption = 'Excluir'
    OnClick = SpeedButton3Click
  end
  object grid: TDBGrid
    Left = 8
    Top = 35
    Width = 718
    Height = 318
    DataSource = datasoruce
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridDblClick
  end
  object colunas: TComboBox
    Left = 8
    Top = 8
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object campo: TEdit
    Left = 95
    Top = 8
    Width = 354
    Height = 21
    TabOrder = 2
  end
  object datasoruce: TDataSource
    DataSet = DataModule1.clientdataset
    Left = 672
    Top = 304
  end
end
