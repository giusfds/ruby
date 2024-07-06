# Tutorial Básico de Ruby

## 1. Declaração de Variáveis
Em Ruby, você pode declarar variáveis simplesmente atribuindo um valor a um nome:
```ruby
nome = "João"
idade = 30
altura = 1.75
```
## 2. Leitura de imput

Para ler um valor do usuário, você pode usar o método `gets`:

```ruby
print "Digite seu nome: "
nome = gets.chomp
puts "Olá, #{nome}!"
```
o metodo `gets` é usado para ler a entrada do usuário, sendo o mesmo uma string, e a função `chomp` é usada para remover a quebra de linha no final da entrada do usuário.

## 3. Condicionais
Ruby usa `if`, `elsif`, `else` para expressar condições:
```ruby
idade = 18

if idade >= 18
  puts "Você é maior de idade."
else
  puts "Você é menor de idade."
end
```

## 4. Arrays (Vetores)
Para criar um array em Ruby:
```ruby
numeros = [1, 2, 3, 4, 5]
```

## 5. Laços de Repetição
Para criar um laço de repetição, você pode usar `while`, `until`, ou `for`:
```ruby
# Usando while
i = 0
while i < 5
  puts "Número #{i}"
  i += 1
end

# Usando until
j = 0
until j >= 5
  puts "Número #{j}"
  j += 1
end

# Usando for
for k in 0..4
  puts "Número #{k}"
end
```

## 6. Programação Orientada a Objetos (OO)
Ruby é uma linguagem orientada a objetos, o que significa que tudo é um objeto. Aqui está um exemplo básico de como definir uma classe e criar objetos:
```ruby
class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def apresentar
    "Olá, meu nome é #{@nome} e eu tenho #{@idade} anos."
  end
end

pessoa1 = Pessoa.new("João", 30)
puts pessoa1.apresentar
```

## Atividades

### Atividade 1
Declare variáveis para armazenar seu nome, idade e altura, e depois imprima esses valores.

### Atividade 2 (Mini CRUD)
Crie uma aplicação simples para gerenciar uma lista de tarefas. Você deve implementar as seguintes funcionalidades:
1. Adicionar uma tarefa
2. Listar todas as tarefas
3. Atualizar uma tarefa
4. Excluir uma tarefa
5. Sair da aplicação

### Atividade 3
Crie um array com 5 números e imprima cada um deles usando um laço de repetição.

### Atividade 4
Escreva uma função que receba um número como parâmetro e retorne se o número é par ou ímpar.

### Atividade 5
Crie uma classe `Carro` com atributos `marca` e `modelo`. Adicione um método para apresentar o carro.
