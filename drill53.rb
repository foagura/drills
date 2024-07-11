def get_days(year, month)
  days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if (year % 4) && (year % 100 && year % 400) && (month == 2)
    days[month] + 1
  else
    days[month]
  end
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"