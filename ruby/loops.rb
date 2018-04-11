
instrutores = %w[Fernando Oscar Demis Caio Borel Yago]
# Fernando = 0
# Oscar = 1
# Demis = 2
# Caio = 3

# For
# for item in (0...instrutores.size)
#     puts instrutores[item] 
# end

#Foreach
# instrutores.each do |instrutor|
#     puts instrutor
# end

inicial = 0
maximo = instrutores.size

#While
# while inicial < maximo
#     puts instrutores[inicial]
#     #inicial = inicial + 1 ou
#     inicial += 1
# end


#Begin

begin
    puts instrutores[inicial]
    inicial += 1
end while inicial < maximo
