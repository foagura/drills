def register_data(students)
  student = {}
  puts "生徒のデータを登録します"
  puts "名前を入力してください"
  student[:name] = gets.chomp
  puts "年齢を入力してください"
  student[:age] = gets.to_i
  puts "身長(m単位)を入力してください"
  student[:stature] = gets.to_f
  puts "体重を入力してください"
  student[:weight] = gets.to_f

  student[:bmi] = calculate_bmi(student).round(2)

  students << student
end

def calculate_bmi(student)
  student[:weight] / (student[:stature] * student[:stature])
end

def show_data(students)
  puts "見たい人の番号を選択してください"
  students.each_with_index do |student, index|
    puts "#{index + 1}:#{student[:name]}"
  end

  num = gets.to_i
  student_data(students[num - 1])
end

def student_data(student)
  puts "名前:#{student[:name]}"
  puts "年齢:#{student[:age]}"
  puts "身長:#{student[:stature]}"
  puts "体重:#{student[:weight]}"
  puts "BMI:#{student[:bmi]}"
end

students = []

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(students)
  elsif input == 1
    show_data(students)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end