object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 46
    Height = 13
    Caption = 'Descricao'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 8
    Width = 329
    Height = 21
    DataField = 'descricao'
    DataSource = ds
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 35
    Width = 121
    Height = 21
    DataField = 'idade'
    DataSource = ds
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Action = DatasetPost1
    Caption = 'Salvar'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 184
    Top = 152
    Width = 75
    Height = 25
    Action = DatasetCancel1
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ds: TDataSource
    DataSet = DataModule1.clientdataset
    Left = 384
    Top = 152
  end
  object acoes: TActionList
    Left = 304
    Top = 152
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
      OnExecute = DatasetPost1Execute
      DataSource = ds
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = ds
    end
  end
end
