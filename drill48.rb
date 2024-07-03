class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です、#{@age}歳です"
  end
end

student = Student.new("john", 15)
student.introduce