inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  StyleElements = [seFont, seClient, seBorder]
  PixelsPerInch = 192
  TextHeight = 32
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Caption = 'Fornecedores'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 228
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
          GradientEndColor = clBlack
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Fornecedor'
              Width = 562
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 457
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CPF/CNPJ'
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object Label1: TLabel [0]
          Left = 38
          Top = 160
          Width = 104
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'C'#243'digo'
          Color = clBlack
          FocusControl = edtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel [1]
          Left = 525
          Top = 160
          Width = 310
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Nome do Fornecedor'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [2]
          Left = 38
          Top = 256
          Width = 217
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [3]
          Left = 1053
          Top = 256
          Width = 123
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 221
          Top = 160
          Width = 143
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'CNPJ/CPF'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [5]
          Left = 662
          Top = 256
          Width = 81
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'IE/RG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 38
          Top = 352
          Width = 170
          Height = 45
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Observa'#231#227'o'
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPES_CODIGO: TDBEdit [7]
          Left = 38
          Top = 204
          Width = 171
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtPES_RAZAO: TDBEdit [8]
          Left = 525
          Top = 204
          Width = 1156
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtPES_FANTASIA: TDBEdit [9]
          Left = 38
          Top = 300
          Width = 612
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtPES_TELEFONE: TDBEdit [10]
          Left = 1053
          Top = 300
          Width = 324
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtPES_CNPJCPF: TDBEdit [11]
          Left = 221
          Top = 204
          Width = 292
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtPES_IERG: TDBEdit [12]
          Left = 662
          Top = 300
          Width = 379
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edtPES_OBSERVACAO: TDBEdit [13]
          Left = 38
          Top = 396
          Width = 1643
          Height = 40
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 7
          StyleElements = [seFont, seClient, seBorder]
          inherited lblTitulo_Cadastro: TLabel
            Width = 462
            Caption = 'CADASTRO DE FORNECEDORES'
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 462
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 1281
    Top = 657
  end
end
