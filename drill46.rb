def fortune_telling(birthday)
  fortunes = ["凶", "中吉", "吉", "大吉"].shuffle
  fortune = fortunes[(birthday * rand(10)) % 4]
  puts "今日のあなたの運勢は#{fortune}です"
end

puts "誕生日を入力してください\n例:1月1日の場合は0101と入力"
birthday = gets.to_i
fortune_telling(birthday)