require_relative 'cliente'

class Conta 

	attr_reader :numero, :titular 
	attr_accessor :saldo


  def initialize(numero, titular, saldo)
    @numero = numero 
    @titular = titular 
    @saldo = saldo
  end

	def sacar(valor)
		if valor > self.saldo 
			puts "Saldo insuficiente"
		else
			self.saldo = self.saldo - valor
		end
	end

	def depositar(valor)
		self.saldo = self.saldo + valor
	end

	def transferir(conta, valor)
		if valor > self.saldo 
			puts "Saldo insuficiente"
		else
			self.saldo = self.saldo - valor
		end
	end
end 