now = Time.new
wdays = ["日", "月", "火", "水", "木", "金", "土"]
puts "現在は西暦#{now.year}年#{now.mon}月#{now.mday}日#{wdays[now.wday]}曜日です"