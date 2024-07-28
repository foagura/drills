def registration_student(students)
  student = {}
  puts '生徒名を入力してください'
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  student[:age] = gets.to_i

  puts "国語の得点は？"
  student[:japanese] = gets.to_i
  puts "数学の得点は？"
  student[:math] = gets.to_i
  puts "英語の得点は？"
  student[:english] = gets.to_i

  students << student
end

def show_student_name(students)
  puts '見たい生徒の番号を入力してください'
  students.each_with_index do |student, index|
    puts "[#{index + 1}]#{student[:name]}"
  end

  num = gets.to_i
  show_student(students[num - 1])
end

def show_student(student)
  puts "名前:#{student[:name]}"
  puts "年齢:#{student[:age]}"
  puts "国語:#{student[:japanese]}"
  puts "数学:#{student[:math]}"
  puts "英語:#{student[:english]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i

  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end