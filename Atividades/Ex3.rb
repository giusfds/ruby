# array = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

# # e a mesma coisa de um for, porem em cada char do array
# array.each do |i|
#   puts i
# end
# # esses fdois ai fazem a mesma coisa
# for i in array
#   puts i
# end

# array.each do |i|
#   puts i if i % 5 == 0
# end

# # isso e a mesma coisa que um while da vida
# loop do
#   puts "Digite um numero de 1 a 10"
#   num = gets.to_i
#   break if num >= 1 && num <= 10
# end 



# tentativa de fazer uma hash em ruby
def hash(elemento)
  return elemento % tamanho
end

tamanho = 5
