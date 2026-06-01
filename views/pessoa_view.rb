require_relative "../lib/pessoa"
require_relative "../lib/endereco"

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
          p "   ID    |   CPF/CNPJ    |   NOME    |   TIPO   |    CIDADE/UF   "
          @data.listar.each_with_index do |p, index|
            p "#{index + 1} | #{p.cpf_cnpj} | #{p.nome} | #{p.tipo} | #{p.endereco.cidade}/#{p.endereco.uf} "
          end
        when 2
          print "Informe o CPF/CNPJ: "
          registro = gets.chomp

          print "Informe o nome: "
          nome = gets.chomp

          print "Informe o CEP: "
          cep = gets.chomp

          print "Informe o logradouro: "
          logradouro = gets.chomp

          print "Informe o bairro: "
          bairro = gets.chomp

          print "Informe a cidade: "
          cidade = gets.chomp

          print "Informe a UF: "
          uf = gets.chomp

          endereco = Endereco.new cep, logradouro, bairro, cidade, uf

          @data.add Pessoa.new registro, nome, endereco
        when 0
          break
        else
          p "Opção Inválida!"
      end

    end
  end
end
