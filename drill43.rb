class Book
  attr_reader :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new('吾輩は猫である', 1000)
puts "#{book.title}の価格は#{book.price}円です"
