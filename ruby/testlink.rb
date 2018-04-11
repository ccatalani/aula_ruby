

@cts = [] # ou cts = [], que tem o mesmo resultado

def adiciona
  puts 'Informe um cenário de teste:'
  nome = STDIN.gets
  @cts.push(nome)
end

def lista
  puts 'Listando os cenários de testes:'
  @cts.each do |ct|
    puts ct
  end
end

@opcao = 0

begin
  puts '### Test Link RB #####'
  puts '1 - Adicionar um cenário'
  puts '2 - Listar cenários'
  puts '3 - Sair '
  puts '########################'

  @opcao = STDIN.gets.to_i

  case @opcao
  when 1
    adiciona
  when 2
    lista
  when 3
    system(exit)
  else (@opcao > 3) || (@opcao.zero?)
       puts 'Opção inválida'
  end
end