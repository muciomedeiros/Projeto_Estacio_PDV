object ServiceCadastro: TServiceCadastro
  Height = 1920
  Width = 2560
  PixelsPerInch = 192
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM pessoas where pes_codigo = :codigo')
    Left = 168
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_PessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_PessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_PessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_PessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object QRY_PessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object QRY_PessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object QRY_PessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object QRY_PessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM endereco where end_codigo = :codigo ')
    Left = 168
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_enderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_enderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_enderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object QRY_enderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object QRY_enderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object QRY_enderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object QRY_enderecosEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 100
    end
    object QRY_enderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object QRY_produto1: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM produto1 where pr1_codigo = :codigo')
    Left = 160
    Top = 424
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1PR1_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto1PR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PR1_NOMEPOPULAR: TStringField
      FieldName = 'PR1_NOMEPOPULAR'
      Origin = 'PR1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1PR1CODIGOBARRA: TStringField
      FieldName = 'PR1CODIGOBARRA'
      Origin = 'PR1CODIGOBARRA'
      Size = 50
    end
    object QRY_produto1PR1_REFERENCIA: TStringField
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 50
    end
    object QRY_produto1PR1_GRUPO: TIntegerField
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produto1PR1_SUBGRUPO: TIntegerField
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produto1PR1_NCM: TStringField
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 10
    end
    object QRY_produto1PR1_CUSTOINI: TFMTBCDField
      FieldName = 'PR1_CUSTOINI'
      Origin = 'PR1_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto1PR1_VENDAAVISTA: TFMTBCDField
      FieldName = 'PR1_VENDAAVISTA'
      Origin = 'PR1_VENDAAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto1PR1_VENDAPRAZO: TFMTBCDField
      FieldName = 'PR1_VENDAPRAZO'
      Origin = 'PR1_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto1PR1_SITTRIBUTARIA: TIntegerField
      FieldName = 'PR1_SITTRIBUTARIA'
      Origin = 'PR1_SITTRIBUTARIA'
    end
    object QRY_produto1PR1_ESTOQUE: TFMTBCDField
      FieldName = 'PR1_ESTOQUE'
      Origin = 'PR1_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object QRY_movestoque: TFDQuery
    AfterScroll = QRY_movestoqueAfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from movestoque where mov_codigo = :codigo')
    Left = 464
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_movestoqueMOV_CODIGO: TIntegerField
      FieldName = 'MOV_CODIGO'
      Origin = 'MOV_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoqueMOV_TIPOESTOQUE: TIntegerField
      FieldName = 'MOV_TIPOESTOQUE'
      Origin = 'MOV_TIPOESTOQUE'
    end
    object QRY_movestoqueMOV_DATA: TDateField
      FieldName = 'MOV_DATA'
      Origin = 'MOV_DATA'
    end
    object QRY_movestoqueMOV_HORA: TTimeField
      FieldName = 'MOV_HORA'
      Origin = 'MOV_HORA'
    end
    object QRY_movestoqueMOV_VLRDESCONTO: TFMTBCDField
      FieldName = 'MOV_VLRDESCONTO'
      Origin = 'MOV_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueMOV_VLRTOTAL: TFMTBCDField
      FieldName = 'MOV_VLRTOTAL'
      Origin = 'MOV_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QRY_movestoqueitem: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from movestoque_item where mvi_codigo = :codigo')
    Left = 464
    Top = 264
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_movestoqueitemMVI_CODIGO: TIntegerField
      FieldName = 'MVI_CODIGO'
      Origin = 'MVI_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoqueitemMVI_CODIGOMOVESTOQUE: TIntegerField
      FieldName = 'MVI_CODIGOMOVESTOQUE'
      Origin = 'MVI_CODIGOMOVESTOQUE'
    end
    object QRY_movestoqueitemMVI_CODITEM: TIntegerField
      FieldName = 'MVI_CODITEM'
      Origin = 'MVI_CODITEM'
    end
    object QRY_movestoqueitemMVI_QUANTIDADE: TFMTBCDField
      FieldName = 'MVI_QUANTIDADE'
      Origin = 'MVI_QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRUNITARIO: TFMTBCDField
      FieldName = 'MVI_VLRUNITARIO'
      Origin = 'MVI_VLRUNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRTOTAL: TFMTBCDField
      FieldName = 'MVI_VLRTOTAL'
      Origin = 'MVI_VLRTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueitemMVI_VLRDESCONTO: TFMTBCDField
      FieldName = 'MVI_VLRDESCONTO'
      Origin = 'MVI_VLRDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
