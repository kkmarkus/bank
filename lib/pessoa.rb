class Pessoa
  
  attr_reader :cpf_cnpj, :nome, :tipo, :endereco

  def initialize cpf_cnpj, nome, endereco
    @cpf_cnpj = cpf_cnpj
    @nome = nome
    @endereco = endereco
    @tipo = cpf_cnpj.size == 11 ? "PF" : "PJ"
  end

end
