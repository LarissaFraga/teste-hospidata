object Conexao: TConexao
  OldCreateOrder = False
  Height = 131
  Width = 269
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=hospidata'
      'User_Name=postgres'
      'Password=123456'
      'DriverID=PG')
    Connected = True
    Left = 32
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\Larissa\OneDrive\Documentos\teste_hospidata\projeto hos' +
      'pidata\executaveis'
    Left = 112
    Top = 8
  end
end
