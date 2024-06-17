def withdraw(balance, amount)
  fee = 110
  if balance < (amount + fee)
    puts "残高不足です"
  else
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高#{balance}は円です。"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)