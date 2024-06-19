def number_of_elements(array, i)
  left = 0
  right = array.length - 1
  
  while left <= right do
    center = (left + right) / 2

    if array[center] == i
      puts "#{i}は#{center}番目に存在します"
      return
    elsif array[center] < i
      left = center + 1
    else
      right = center - 1
    end
  end

  puts "値は配列内に存在しません"
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索する数字を入力してください"
i = gets.to_i
number_of_elements(array, i)