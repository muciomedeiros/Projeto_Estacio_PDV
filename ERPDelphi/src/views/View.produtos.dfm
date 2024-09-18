inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  StyleElements = [seFont, seClient, seBorder]
  PixelsPerInch = 192
  TextHeight = 32
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Caption = 'Produtos'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 153
    end
    inherited pnlICone: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlLinhaFundo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CardPanel_listas: TCardPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited card_pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
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
          Height = 491
          GradientEndColor = clBlack
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome Completo'
              Width = 496
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome Popular'
              Width = 393
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1CODIGOBARRA'
              Title.Caption = 'C'#243'digo barras'
              Width = 287
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncias'
              Width = 380
              Visible = True
            end>
        end
        object pnlDetalhe: TPanel
          Left = 0
          Top = 704
          Width = 1753
          Height = 178
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBG_detalhe: TDBGrid
            AlignWithMargins = True
            Left = 10
            Top = 10
            Width = 1733
            Height = 158
            Cursor = crHandPoint
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alClient
            BorderStyle = bsNone
            Color = clBlack
            DataSource = dsDados
            FixedColor = clBlack
            GradientEndColor = clBlack
            GradientStartColor = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -24
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -24
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PR1_CODIGO'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR1_CUSTOINI'
                Title.Caption = 'Pre'#231'o de custo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR1_VENDAAVISTA'
                Title.Caption = 'Venda avista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR1_VENDAPRAZO'
                Title.Caption = 'Venda a prazo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR1_ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited card_cadastro: TCard
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = -6
        object Label1: TLabel
          Left = 22
          Top = 205
          Width = 104
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'C'#243'digo'
          Color = clBlack
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 190
          Top = 205
          Width = 410
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Nome completo do produto'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 1124
          Top = 205
          Width = 386
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Nome popular do produto'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 22
          Top = 300
          Width = 204
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'C'#243'digo barras'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 269
          Top = 304
          Width = 137
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Ref'#234'ncias'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 717
          Top = 304
          Width = 75
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'NCM'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 22
          Top = 401
          Width = 230
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Pre'#231'o de Custo'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Symbol'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 269
          Top = 401
          Width = 329
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Pre'#231'o de venda avista'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Symbol'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 610
          Top = 401
          Width = 354
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Pre'#231'o de venda a prazo'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Symbol'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 22
          Top = 510
          Width = 121
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Estoque'
          FocusControl = DBEdit11
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Symbol'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTitCadProdutos: TPanel
          Left = 0
          Top = 0
          Width = 1753
          Height = 193
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Align = alTop
          BevelOuter = bvNone
          Color = 13553358
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 22
            Top = 59
            Width = 405
            Height = 59
            Margins.Left = 6
            Margins.Top = 6
            Margins.Right = 6
            Margins.Bottom = 6
            Caption = 'Cadastro de Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 6381921
            Font.Height = -43
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 23
          Top = 248
          Width = 155
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PR1_CODIGO'
          DataSource = dsDados
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 190
          Top = 248
          Width = 923
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 1125
          Top = 248
          Width = 605
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 22
          Top = 350
          Width = 235
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PR1CODIGOBARRA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 269
          Top = 350
          Width = 436
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 717
          Top = 350
          Width = 324
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 22
          Top = 445
          Width = 235
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PR1_CUSTOINI'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 269
          Top = 445
          Width = 331
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PR1_VENDAAVISTA'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 610
          Top = 445
          Width = 365
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PR1_VENDAPRAZO'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 22
          Top = 567
          Width = 251
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PR1_ESTOQUE'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
    Left = 1265
    Top = 417
  end
end
