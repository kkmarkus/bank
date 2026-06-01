require_relative "lib/util"

tela = Util.new
loop = true

while loop
  
  tela.gerarTitulo "Sistema Bancario"
  print "Escolha: 1 - Pessoa | 2 - Conta  "
  escolha = gets.chomp.to_i

  case escolha
    when 1 
      p "Tela de Pessoas"
    when 2 
      p "Tela de contas"
  else
    p "Operação inválida"
  end

  print "Deseja continuar? S - sim | N - não  "
  continuar = gets.chomp
  loop = false if continuar.upcase == "N"
end
