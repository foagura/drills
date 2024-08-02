def get_week(year, month, day)
  wdays = ["日", "月", "火", "水", "木", "金", "土"]
  if (year % 4 == 0) && (year % 100 !== 0 && year % 400 == 0)
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"