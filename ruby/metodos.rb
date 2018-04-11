
# Se o resultado do meu teste for com bugs, o código será 1
# Se o resultado do meu teste for sem bugs, o código será 0

# Recebe um código de mensagem
# Se o código for 1, deve exibir a 

def achou_bug(valor)
    case valor
    when 0
        puts 'Pode ir para produção.'
    when 1
        puts 'Informe o desenvolvedor'
    else
        puts 'Código inválido.'
    end
end

puts 'Qual o resultado do teste? 0 - Sem bugs | 1 - Com Bugs'
resultado = STDIN.gets.to_i

achou_bug(resultado)
