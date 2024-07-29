def post_item(a_cart)
  goods = {}
  # 商品名・値段・個数の入力を促し、入力された値をハッシュオブジェクトで管理する
  puts "商品名を入力してください："
  goods[:name] = gets.chomp
  puts "値段を入力してください："
  goods[:price] = gets.to_i
  puts "個数を入力してください："
  goods[:quantity] = gets.to_i
  line

  # 入力された値（ハッシュオブジェクトで管理している値）と合計金額を表示する
  puts "商品名 : #{goods[:name]}"
  puts "値段 : #{goods[:price]}"
  puts "個数 : #{goods[:quantity]}"
  puts "合計金額 : #{goods[:price] * goods[:quantity]}"

  line
  # ハッシュを配列オブジェクトに追加する
  a_cart << goods

  # a_cartをメソッドの呼び出し元に返す2
  return a_cart
end

def line
  puts "---------------------------"
end

def check_items(a_cart)
  cart_sumprice = 0
  line

  # 保存された全ての商品情報（商品名・値段・個数）を、商品ごとに表示する
  a_cart.each_with_index do |goods, index|
    puts "[#{index + 1}] 商品名：#{goods[:name]}, 値段：#{goods[:price]}, 個数：#{goods[:quantity]}"
    cart_sumprice += goods[:price] * goods[:quantity]
  end

  # 全ての商品の合計金額を表示する
  puts "合計金額 : #{cart_sumprice}"
  line
end
  
def end_program
  # プログラムを終了させる
  exit
end
  
def exception
  puts "入力された値は無効な値です"
end

cart = []             # 配列オブジェクトcartの生成

while true do
  # メニューの表示
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty?       #カートに商品がない場合、[1]は選択不可
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    cart = post_item(cart)  # post_itemメソッドを呼び出す記述
  elsif input == 1 then
    check_items(cart)       # check_itemsメソッドを呼び出す記述
  elsif input == 2 then
    end_program             # end_programメソッドを呼び出す記述
  else
    exception               # exceptionメソッドを呼び出す記述
  end
end