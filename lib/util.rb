require "io/console"

class Util

  def linha(largura)
    puts "=" * largura
  end

  def texto_centralizado(texto, largura)
    puts texto.center(largura)
  end

  def gerar_titulo(texto)
    limpar_tela
    largura = IO.console.winsize[1]
    linha(largura)
    texto_centralizado(texto, largura)
    linha(largura)
  end

  def limpar_tela
    system("clear") || system("cls")
  end

end
