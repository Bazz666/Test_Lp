# Configuramos la estructura para que acepte el nombre de la palabra y una descripcion

class Word

  def initialize(word_name,word_description)
    @word_name = word_name
    @word_description = word_description
  end

  def word
    @word_name
  end

  def meaning
    @word_description
  end

end

# creamos un metodo para poder buscar un arreglo por palabra ligado a su descripcion
class Dictionary
  def initialize(arr)
    @arr = arr
  end

  def find_meaning(word)
    description = @arr.find {|w| w.word == word }
    description = description.meaning unless @arr.nil?
    description
  end

end

# Probammos con el primer objeto (apple, 'A fruit')  "
apple = Word.new('apple', 'A fruit')

puts apple.word == 'apple' # => true

puts apple.meaning == 'A fruit' # => true

car = Word.new('car', 'A transport')
#  Agregamos la nueva palabra el objeto (('car', 'A transport')al Arreglo diccionary
dictionary = Dictionary.new([apple, car])

puts dictionary.find_meaning('apple') == 'A fruit' # => true

puts dictionary.find_meaning('car') == 'A transport' # => true
