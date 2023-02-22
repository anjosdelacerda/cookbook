### MÉTODOS

def bem_vindo()
	puts "Bem-vindo ao Cookbook, a sua rede social de gerenciamento de receitas!"
end

def menu()
	puts "=== MENU ==="
	puts 
	puts "[1] digite para para cadastrar uma receita "
	puts "[2] digite para ver todas as receitas3 "
	puts "[3] digite para sair"

	print "digite uma opção:"
	gets.to_i()
end

def cadastrar_receita()
	print "digite a sua receita: "
	receita = gets.chomp()
	print "digite o tipo da receita: "
	tipo = gets.chomp()

	puts "A receita #{receita} foi cadastrada com sucesso"


	return {nome: receita, tipo: tipo} 
end

def listar_receitas(lista)
	puts 
	puts "=== Minhas Receitas ==="
	puts 
		
	lista.each do |receitinha| 
		puts "Prato: #{receitinha[:nome]} | Categoria: #{receitinha[:tipo]}"
	end
end




### PROGRAMA
bem_vindo()

receitas = []

opcao = menu()

while (opcao != 3) do
	if(opcao == 1)
		receita_hash = cadastrar_receita()

		receitas << receita_hash

	elsif(opcao == 2)
		listar_receitas(receitas)
		
	else 
		puts "opção invalida"
	end
	
	opcao = menu()
end 

puts "Até logo, tchau"


