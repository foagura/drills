movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

puts "以下から1つ選択してください\n・title\n・genre\n・year"
str = gets.chomp
puts "#{str}\n#{movie[str]}"