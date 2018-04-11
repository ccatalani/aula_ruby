
#
#     história
#     Sendo um cliente correntista do banco
#     Posso sacar dinheiro em caixas eletrônicos
#     Para que eu compre em lugares que não aceitem cartão
#
#     Cenários:
#     # usuário deve ter uma conta corrente
#     # O sistema deve verificar se o cliente tem saldo disponível
#     # Ao fazer um saque, deve deduzir do saldo do cliente
#     # Ao final deve exibir mensagem de sucesso
#
#     # O valor máximo de saque por transação deve ser de R$700

# básico do tdd, com um teste unitário

require_relative 'conta'

describe('Saque no caixa eletrônico') do
  it('Deve realizar um saque') do
    cliente = Conta.new(1000)
    cliente.saca(500)
    puts cliente.saldo # => 500
    puts cliente.mensagem_de_saida # => Saque realizado com sucesso.

    expect(cliente.saldo).to eql 500
    expect(cliente.mensagem_de_saida).to eql 'Saque realizado com sucesso!'
  end

  it('Quando o valor do saque é maior do que o saldo disponível') do
    cliente = Conta.new(100)
    cliente.saca(200)

    expect(cliente.saldo).to eql 100
    expect(cliente.mensagem_de_saida).to eql 'Saldo insuficiente.'
  end

  it('Quando o valor do saque é superior ao máximo permitido') do
    cliente = Conta.new(1000)
    cliente.saca(701)

    expect(cliente.saldo).to eql 1000
    expect(cliente.mensagem_de_saida).to eql 'Retirada máxima: R$700,00.'
  end
end
