require_relative 'conta'

class ContaCorrente < Conta

	attr_accessor :limite 

	def initialize(numero, titular, saldo, limite)
		super(numero, titular, saldo)
		@limite = limite
	end

	def sacar(valor)
		if valor > (self.saldo + self.limite)
			puts "Saldo insuficiente"
		else
			self.saldo = self.saldo - valor
		end
	end

end