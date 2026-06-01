require_relative "../lib/pessoa"

class PessoaView

  def initialize data
    @data = data
  end

  def menu_pessoa

    loop do
      
      print "Escolha: 1 - Listar | 2 - Cadastrar | 0 - Voltar   "
      escolha = gets.chomp.to_i

      case escolha
        when 1
          p "   ID    |   CPF/CNPJ    |   NOME    |   TIPO   |    CEP   |   LOGRADOURO    "
          @data.listar.each with index do |p, index|
            p "#{index + 1} | #{p.cpf_cnpj} | #{p.nome} | #{p.tipo} | #{p.cep} | #{p.logradouro} "
          end
        when 2
          print "Informe o CPF/CNPJ: "
          registro = gets.chomp

          print "Informe o nome: "
          nome = gets.chomp

          print "Informe o cep: "
          cep = gets.chomp

          print "Informe o logradouro: "
          logradouro = gets.chomp

          @data.add Pessoa.new registro, nome, cep, logradouro
        when 0
          break
        else
          p "Opção Inválida!"
      end

    end
  end
end
