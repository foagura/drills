class Dog
  @@type = "犬"

  def self.say
    puts "ワンワン"
  end

  def initialize(name, dog_type)
    @name = name
    @dog_type = dog_type
  end

  def say_type
    puts "わたしは#{@@type}です"
  end

  def self_introduction
    puts "わたしの名前は#{@name}で種類は#{@dog_type}です"
  end
end

dog = Dog.new("シバ", "柴犬")
Dog.say
dog.say_type
dog.self_introduction