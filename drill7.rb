require "date"

w_days = ["日", "月", "火", "水", "木", "金", "土"]
day = Date.today.wday

if day == 5
  puts "今日は#{w_days[day]}曜日だ!!!"
else
  puts "今日は#{w_days[day]}曜日だ"
end

