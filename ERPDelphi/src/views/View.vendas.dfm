inherited ViewVendas: TViewVendas
  Caption = 'ViewVendas'
  ClientHeight = 1024
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 1024
  PixelsPerInch = 192
  TextHeight = 32
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Caption = 'Vendas'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 121
    end
    inherited pnlICone: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlRodape: TPanel
    Top = 943
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 943
    inherited btbNovo: TSpeedButton
      Left = 913
      ExplicitLeft = 913
    end
    inherited btnEditar: TSpeedButton
      Left = 1125
      ExplicitLeft = 1125
    end
    inherited btnCancelar: TSpeedButton
      Left = 1337
      ExplicitLeft = 1337
    end
    inherited btnSalvar: TSpeedButton
      Left = 1549
      ExplicitLeft = 1549
    end
    inherited btnExcluir: TSpeedButton
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
  end
  inherited pnlLinhaFundo: TPanel
    Height = 862
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 862
    inherited CardPanel_listas: TCardPanel
      Height = 862
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 862
      inherited card_pesquisa: TCard
        Height = 862
        StyleElements = [seFont, seClient, seBorder]
        ExplicitHeight = 862
        inherited pnlTituloPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtPesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_dados: TDBGrid
          Height = 649
          GradientEndColor = clBlack
          Columns = <
            item
              Expanded = False
              FieldName = 'MOV_CODIGO'
              Width = 183
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_TIPOESTOQUE'
              Width = 283
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_DATA'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_HORA'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VLRDESCONTO'
              Width = 276
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOV_VLRTOTAL'
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        Height = 862
        StyleElements = [seFont, seClient, seBorder]
        ExplicitHeight = 862
        inherited pnlTituloCadastro: TPanel
          Height = 305
          Font.Color = clRed
          ParentFont = False
          StyleElements = [seFont, seClient, seBorder]
          ExplicitHeight = 305
          inherited lblTitulo_Cadastro: TLabel
            Left = 41
            Width = 104
            Height = 45
            Align = alNone
            Caption = 'C'#243'digo'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitLeft = 41
            ExplicitWidth = 104
          end
          object lblNomeVendedor: TLabel
            AlignWithMargins = True
            Left = 301
            Top = 70
            Width = 371
            Height = 45
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = '[ NOME DO VENDEDOR ]'
            Color = 9803157
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblProdutos: TLabel
            AlignWithMargins = True
            Left = 41
            Top = 175
            Width = 293
            Height = 45
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = 'Escolha um Produto'
            Color = 9803157
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lblQTD: TLabel
            AlignWithMargins = True
            Left = 829
            Top = 175
            Width = 171
            Height = 45
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = 'Quantidade'
            Color = 9803157
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label1: TLabel
            AlignWithMargins = True
            Left = 1012
            Top = 175
            Width = 173
            Height = 45
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = 'Vlr. Unit'#225'rio'
            Color = 9803157
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 1208
            Top = 175
            Width = 143
            Height = 45
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = 'Sub. Total'
            Color = 9803157
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object btnSalvarProduto: TSpeedButton
            Left = 1451
            Top = 229
            Width = 85
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Caption = 'Salvar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -32
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtCodigoVendedor: TSearchBox
            Left = 41
            Top = 77
            Width = 216
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            OnExit = edtCodigoVendedorExit
            ButtonWidth = 48
          end
          object edtProduto: TSearchBox
            Left = 41
            Top = 229
            Width = 776
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ButtonWidth = 48
            OnInvokeSearch = edtProdutoInvokeSearch
          end
          object edtQtd: TEdit
            Left = 829
            Top = 229
            Width = 171
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtVlrUnitario: TEdit
            Left = 1012
            Top = 229
            Width = 184
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtSubTotal: TEdit
            Left = 1208
            Top = 229
            Width = 184
            Height = 40
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object DBG_itensVendas: TDBGrid
          AlignWithMargins = True
          Left = 10
          Top = 315
          Width = 1733
          Height = 328
          Cursor = crHandPoint
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alClient
          BorderStyle = bsNone
          Color = clBlack
          DataSource = dsItens
          FixedColor = clBlack
          GradientStartColor = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -24
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MVI_CODIGO'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_CODITEM'
              Width = 179
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_QUANTIDADE'
              Width = 229
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRUNITARIO'
              Width = 237
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRDESCONTO'
              Width = 244
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MVI_VLRTOTAL'
              Width = 280
              Visible = True
            end>
        end
        object pnlTotais: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 653
          Width = 1753
          Height = 206
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Align = alBottom
          BevelOuter = bvNone
          Color = 7105644
          ParentBackground = False
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 1548
            Top = 45
            Width = 177
            Height = 54
            Margins.Left = 6
            Margins.Top = 20
            Margins.Right = 6
            Caption = 'Sub. Total'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -40
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object edtSub_Total: TEdit
            Left = 1470
            Top = 99
            Width = 255
            Height = 62
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Alignment = taRightJustify
            BorderStyle = bsNone
            Color = 7105644
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -53
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '150,35'
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_movestoque
    Left = 1458
    Top = 450
  end
  object dsItens: TDataSource
    DataSet = ServiceCadastro.QRY_movestoqueitem
    Left = 1473
    Top = 585
  end
end
