def search(target_num, input)
  input.each_with_index do |num, index|
    index += 1
    if num == target_num
      return puts "#{index}番目にあります"
    end
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]

search(11, input)