puts "Bem-vindo ao Cookbook, a sua rede social de gerenciamento de receitas!"
receitas = []
puts "=== MENU ==="
puts 
puts "[1] digite para para cadastrar uma receita "
puts "[2] digite para ver todas as receitas3 "
puts "[3] digite para sair"

print "digite uma opção:"
gets.chomp()


opcao = gets.to_i()
# puts "#{opcao} ola nando"

while (opcao != 3) do
	if(opcao == 1)
		print "digite a sua receita: "
		receita = gets.chomp()


		receitas << receita 

		puts "A receita #{receita} foi cadastrada com sucesso"
	elsif(opcao == 2)
		puts 
		puts "=== Minhas Receitas ==="
		puts 
		
		receitas.each do |receitinha| 
			puts receitinha 
		end
	else 
		puts "opção invalida"
	end
	puts "=== MENU ==="
	puts 
	puts "[1] digite para para cadastrar uma receita "
	puts "[2] digite para ver todas as receitas3 "
	puts "[3] digite para sair"

	print "digite uma opção:"
	gets.chomp()
	opcao = gets.to_i()
end 





puts "Até logo, tchau"


