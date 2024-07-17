def register_data
  puts "名前を入力してください"
  puts "パンチ力を入力してください(0 ~ 100)"
  puts "キック力を入力してください(0 ~ 100)"
  puts "ジャンプ力を入力してください(0 ~ 100)"
  
end

def show_data_list
  puts "見たい番号を選択してください"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  num = gets.to_i

  if num == 0
    register_data
  elsif num == 1
    show_data_list
  elsif num == 2
    exit
  else
    puts "無効な値です"
  end
end