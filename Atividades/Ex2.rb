class Tarefa
  attr_accessor :descricao

  def initialize(descricao)
    @descricao = descricao
  end

  def to_s
    "Tarefa: #{@descricao}"
  end
end

class ListaDeTarefas
  def initialize
    @tarefas = []
  end

  def adicionar(tarefa)
    @tarefas << tarefa
    puts "Tarefa adicionada: #{tarefa}"
  end

  def listar
    @tarefas.each_with_index do |tarefa, index|
      puts "#{index + 1}. #{tarefa}"
    end
  end

  def atualizar(indice, nova_descricao)
    if indice.between?(1, @tarefas.size)
      @tarefas[indice - 1].descricao = nova_descricao
      puts "Tarefa atualizada: #{@tarefas[indice - 1]}"
    else
      puts "Índice inválido"
    end
  end

  def excluir(indice)
    if indice.between?(1, @tarefas.size)
      tarefa = @tarefas.delete_at(indice - 1)
      puts "Tarefa excluída: #{tarefa}"
    else
      puts "Índice inválido"
    end
  end
end

lista = ListaDeTarefas.new

loop do
  puts "1. Adicionar tarefa"
  puts "2. Listar tarefas"
  puts "3. Atualizar tarefa"
  puts "4. Excluir tarefa"
  puts "5. Sair"
  print "Escolha uma opção: "
  opcao = gets.to_i

  case opcao
  when 1
    print "Descrição da tarefa: "
    descricao = gets.chomp
    lista.adicionar(Tarefa.new(descricao))
  when 2
    lista.listar
  when 3
    print "Número da tarefa a atualizar: "
    indice = gets.to_i
    print "Nova descrição: "
    nova_descricao = gets.chomp
    lista.atualizar(indice, nova_descricao)
  when 4
    print "Número da tarefa a excluir: "
    indice = gets.to_i
    lista.excluir(indice)
  when 5
    break
  else
    puts "Opção inválida!"
  end
end