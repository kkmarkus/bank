class PessoaData
  
  def initialize
    @pessoas = []
  end

  def add pessoa
    @pessoas.push pessoa
  end

  def listar
    @pessoas
  end

end
