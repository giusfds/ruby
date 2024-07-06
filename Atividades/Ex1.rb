def validarIdade(idade)
  if idade > 0 && idade < 100
    return true
  end
  return false
end

def validarIdade(idade)
  if idade > 0 && idade < 100
    return true
  end
  return false
end

def validarCPF(cpf)
  cpf = cpf.to_s
  if cpf.length == 11
    return true
  end
  return false
end

#main

# idade
puts "qual sua idade"
idade = gets.chomp.strip.to_i
loop do
  if validarIdade(idade)
    break
  end
  puts "idade invalida, digite um novo valor"
  idade = gets.chomp.strip.to_i
end


# nome
puts "qual seu nome"
nome = gets.chomp


# altura
opcao = nil
loop do
  puts "voce quer falar sua altura em metros ou centimetros?"
  puts "1 - metros"
  puts "2 - centimetros"
  opcao = gets.strip.chomp

  if opcao == "1" || opcao == "2"
      break
    else
      puts "opcao invalida, tente novamente"
  end
end
if opcao == "1"
    puts " qual e a sua altura em metros?"
    altura = gets.strip.to_f
  elsif opcao == "2"
    puts " qual e a sua altura em centimetros"
    altura = gets.strip.to_f / 100
  else
    puts "valor invalio"
end


# cpf
puts "qual seu cpf"
cpf = gets.chomp.strip.to_i
loop do
  if validarCPF(cpf)
    break
  end
  puts "cpf invalido, digite um novo valor"
  cpf = gets.chomp.strip.to_i
end

# out
puts "valores lidos"

puts "A idade é: #{idade}"
puts "O nome é: #{nome}"
puts "A altura é: #{altura}"
puts "Seu CPF e: #{cpf}"