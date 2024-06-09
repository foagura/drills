class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def show
    puts "著者：#{@author}"
    puts "タイトル：#{@title}"
    puts "本文：#{@content}"
  end
end

book = Article.new("阿部", "Rubyの素晴らしさについて", "Awesome Ruby!")

book.show

