module Cliente
  attr_accessor :nome
  
  def initialize(nome, cpf)
    @nome = nome 
    @cpf = cpf
    @saldo = 0 
  end
  
  def depositar(valor)
      @saldo += valor
  end
  
  def sacar(valor)
      @saldo -= valor
  end
  
  def verSaldo
   return @saldo
  end
  end
  
  
  class Conta
    include Cliente
  end
  
  class Poupanca < Conta
    attr_accessor :aniversario
    def initialize (nome, cpf, aniversario)
      super(nome, cpf)
      @aniversario = aniversario
    end
  end
  
  conta = Conta.new('Felipe', 'cpf')
  conta.depositar(500)
  conta.sacar(150)
  puts "Nome do Cliente: #{conta.nome} Saldo: #{conta.verSaldo}"
  
  poupanca = Poupanca.new('Felipe', 'cpf', '07/11/1993')
  poupanca.depositar(300)
  poupanca.sacar(200)

  puts "Poupança do Cliente: #{poupanca.nome} | Aniversário do Cliente: #{poupanca.aniversario} |  Saldo: #{poupanca.verSaldo}"