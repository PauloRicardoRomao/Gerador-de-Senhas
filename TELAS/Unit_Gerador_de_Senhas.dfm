object Form1: TForm1
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsDialog
  Caption = 'GERADOR DE SENHAS'
  ClientHeight = 365
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object PanelFundo: TPanel
    Left = 0
    Top = 0
    Width = 577
    Height = 365
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object LabelQtd: TLabel
      Left = 25
      Top = 48
      Width = 211
      Height = 18
      Caption = 'Quantidade de caracteres'
    end
    object LabelTipo: TLabel
      Left = 25
      Top = 116
      Width = 160
      Height = 18
      Caption = 'Tipos de caracteres'
    end
    object ButtonGerarSenha: TButton
      Left = 25
      Top = 193
      Width = 153
      Height = 49
      Cursor = crHandPoint
      Caption = 'GERAR SENHA'
      TabOrder = 0
      OnClick = ButtonGerarSenhaClick
    end
    object ComboBoxTipoCarac: TComboBox
      Left = 25
      Top = 140
      Width = 280
      Height = 26
      TabOrder = 1
      Text = 'Letras + N'#250'meros + Especiais'
      Items.Strings = (
        'Letras + N'#250'meros + Especiais'
        'Letras + N'#250'meros'
        'Letras'
        'N'#250'meros')
    end
    object EditQtdCarac: TEdit
      Left = 25
      Top = 72
      Width = 80
      Height = 26
      NumbersOnly = True
      TabOrder = 2
      TextHint = 'ex: 8'
    end
    object PanelMEMO: TPanel
      Left = 361
      Top = 0
      Width = 216
      Height = 365
      Align = alRight
      TabOrder = 3
      ExplicitLeft = 360
      ExplicitTop = 1
      ExplicitHeight = 363
      object LabelSenhas: TLabel
        Left = 1
        Top = 24
        Width = 214
        Height = 18
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alBottom
        Alignment = taCenter
        Caption = 'SENHAS'
        ExplicitTop = 22
        ExplicitWidth = 65
      end
      object MemoSenhas: TMemo
        Left = 1
        Top = 42
        Width = 214
        Height = 322
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 40
        ExplicitWidth = 183
      end
    end
    object ButtonLimpar: TButton
      Left = 25
      Top = 265
      Width = 153
      Height = 49
      Cursor = crHandPoint
      Caption = 'LIMPAR BLOCO'
      TabOrder = 4
      OnClick = ButtonLimparClick
    end
  end
end
