def get_week(year, month, day)
  wdays = ["日", "月", "火", "水", "木", "金", "土"]
  time = Time.new(year,month,day)
  
  if day > time.mday
    puts "入力された日は存在しません"
    exit
  else
    wdays[time.wday]
  end
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"