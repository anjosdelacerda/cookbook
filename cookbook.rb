### CONSTANTES

CADASTRAR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

### MÉTODOS

def bem_vindo()
	puts "Bem-vindo ao Cookbook, a sua rede social de gerenciamento de receitas!"
end

def menu()
	puts "=== MENU ==="
	puts 
	puts "[#{CADASTRAR_RECEITA}] digite para para cadastrar uma receita "
	puts "[#{VISUALIZAR_RECEITAS}] digite para ver todas as receitas "
	puts "[#{BUSCAR_RECEITAS}] pesquise uma receita"
	puts "[#{SAIR}] digite para sair"

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
	if lista.empty?
		puts 'Nenhuma receita foi cadastrada'
	end

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

while (opcao != SAIR) do
	if(opcao == CADASTRAR_RECEITA)
		receita_hash = cadastrar_receita()

		receitas << receita_hash

	elsif(opcao == VISUALIZAR_RECEITAS)
		listar_receitas(receitas)
		
	else 
		puts "opção invalida"
	end
	
	opcao = menu()
end 

puts "Até logo, tchau"


