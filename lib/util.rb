require "io/console"

class Util

  def linha(largura)
    puts "=" * largura
  end

  def textoCentralizado(texto, largura)
    puts texto.center(largura)
  end

  def gerarTitulo(texto)
    limparTela
    largura = IO.console.winsize[1]
    linha(largura)
    textoCentralizado(texto, largura)
    linha(largura)
  end

  def limparTela
    system("clear") || system("cls")
  end

end
