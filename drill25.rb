def addition(a, b)
  return a + b
end

def multiplication(a,b)
  return a * b
end

def slice_num(num)
  x = num / 10
  y = num % 10
  return x, y
end

puts "二桁の整数を入力してください"
input = gets.to_i

X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)

puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"