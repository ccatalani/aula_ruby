
class Animal
  attr_accessor :nome, :cor, :raca

  # o construtor da classe é executado automaticamente, antes de qualquer coisa
  def initialize(nome, cor, raca)
    @nome = nome
    @cor = cor
    @raca = raca
  end

  def comer(comida)
    puts comida
  end
end

class Cachorro < Animal
  def late
    puts @nome
    puts 'au, au...'
  end

  def dar_pata
    puts @nome
    puts 'Dá a pata pra mamãe'
  end
end

class Gato < Animal
  def mia
    puts @nome
    puts 'miau...'
  end
end

class Pato < Animal
    def grasna
        puts @nome
        puts 'Quack, quack...'
    end
end

class Galinha < Animal
    def cacareja
        puts @nome
        puts 'Cocoricor'
    end
end

snoopy = Cachorro.new('Snoopy', 'Preto e branco', 'Beagle')
snoopy.late
snoopy.comer('Ração')

spike = Cachorro.new('Spike', 'Cinza', 'Buldog')
spike.late
spike.comer('Bife ancho')
spike.dar_pata

tom = Gato.new('Tom', 'Cinza escuro', 'Persa')
tom.mia
tom.comer('Pernil')

patolino = Pato.new('Patolino', 'Preto', 'Não sei')
patolino.grasna
patolino.comer('Frango assado')

pintadinha = Galinha.new('Pintadinha', 'Azul', 'do inferno')
pintadinha.cacareja
pintadinha.comer('Milho')