class Aluno
  attr_reader :matricula, :curso, :universidade
  attr_accessor :turno, :cor

  def initialize(matricula, curso, turno, universidade)
    @matricula = matricula
    @curso = curso
    @turno = turno
    @universidade = universidade
  end

  def to_s
    "Matricula: #{@matricula}, Curso: #{@curso}, Turno: #{@turno}, Universidade: #{@universidade}"
  end

  def reader_idade
    puts "Idade Aluno é #{self.idade}"
  end

  def writter (sexo)
    puts "Sexo do Aluno é #{sexo}"
  end

  def self.media(nota1, nota2)
    media = (nota1+nota2)/2
    media
  end

  def isAprovado(media)
    if(media >= 7)
      puts "Aprovado"
    elsif(media <7 && media>=4)
      puts "Prova final"
    else
      puts "Reprovado"
    end
  end
end

# @@quantidade = 0;

a1 = Aluno::new(01,"Computação", "MT", "UESPI")
# quantidade+=1
puts a1
puts a1.curso
a1.turno = "TN"
puts a1.turno
media = Aluno.media(10,8)
puts a1.isAprovado(media)