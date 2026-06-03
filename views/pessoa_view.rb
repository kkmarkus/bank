require_relative '../lib/pessoa'
require_relative '../lib/endereco'

class PessoaView
  def initialize(data)
    @data = data
  end

  def menu_pessoa
    loop do
      print 'Escolha: 1 - Listar | 2 - Cadastrar | 0 - Voltar   '
      escolha = gets.chomp.to_i

      case escolha
      when 1
        largura = 75
        puts ''
        puts '-' * largura
        puts " #{'ID'.center(4)} | #{'CPF/CNPJ'.center(14)} | #{'NOME'.center(30)} | #{'TIPO'.center(4)} | CIDADE/UF"
        puts '-' * largura
        @data.listar.each_with_index do |pessoa, index|
          puts " #{(index + 1).to_s.center(4)} | #{pessoa.cpf_cnpj.ljust(14)} | #{pessoa.nome.ljust(30)} | #{pessoa.tipo.center(4)} | #{pessoa.endereco.cidade}/#{pessoa.endereco.uf}"
        end
        puts ''
      when 2
        print 'Informe o CPF/CNPJ: '
        registro = gets.chomp

        while registro.size != 11 && registro.size != 14
          print 'CPF/CNPJ inválido. Informe novamente: '
          registro = gets.chomp 
        end 

        print 'Informe o nome: '
        nome = gets.chomp

        print 'Informe o CEP: '
        cep = gets.chomp

        while cep.size != 8 
          print 'CEP inválido. Informe novamente: '
          cep = gets.chomp
        end

        print 'Informe o logradouro: '
        logradouro = gets.chomp

        print 'Informe o bairro: '
        bairro = gets.chomp

        print 'Informe a cidade: '
        cidade = gets.chomp

        print 'Informe a UF: '
        uf = gets.chomp

        endereco = Endereco.new cep, logradouro, bairro, cidade, uf

        @data.add Pessoa.new registro, nome, endereco
      when 0
        break
      else
        p 'Opção Inválida!'
      end
    end
  end
end
