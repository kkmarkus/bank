class Endereco

  attr_reader :cep, :logradouro, :bairro, :cidade, :uf

  def initialize cep, logradouro, bairro, cidade, uf
    @cep = cep
    @logradouro = logradouro
    @bairro = bairro
    @cidade = cidade
    @uf = uf
  end 

end 
