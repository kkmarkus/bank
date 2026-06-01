class Pessoa
  
  attr_reader :cpf_cnpj, :nome, :tipo, :cep, :logradouro

  def initialize cpf_cnpj, nome, cep, logradouro
    @cpf_cnpj = cpf_cnpj
    @nome = nome
    @tipo = cpf_cnpj.size == 11 ? "PF" : "PJ"
    @cep = cep
    @logradouro = logradouro
  end

end
