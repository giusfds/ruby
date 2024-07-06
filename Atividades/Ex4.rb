def isEven ( elemento )
  return elemento % 2 == 0 ? true : false
end

def isPrime ( elemento)
  return false if elemento == 1
  for i in 2..(elemento -1)
    return false if elemento % i == 0
  end
  return true
end

# AlphaNum manual
def isAlphaNum( elemento )
  elemento.downcase!
  return elemento >= 'a' && elemento <= 'z' || elemento >= '0' && elemento <= '9' ? true : false
end

# AlphaNum .rb 
def isAlphaNumRb( elemento )
  return elemento.match?(/[a-zA-Z0-9]/)
end

# My STRLEN
def myStrlen(elemento)
  contador = 0
  loop do
    break if elemento[contador].nil? || elemento[contador] == "\n" || elemento[contador] == "\0"
    contador ++
  end
  return contador
end


