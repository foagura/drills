# def calculate_points(amount, is_birthday)
#   if amount <= 999 && is_birthday
#     puts "ポイントは#{(amount * 0.03 * 5).floor}ポイントです"
#   elsif amount >= 1000 && is_birthday
#     puts "ポイントは#{(amount * 0.05 * 5).floor}ポイントです"
#   elsif amount <= 999
#     puts "ポイントは#{(amount * 0.03).floor}ポイントです"
#   else
#     puts "ポイントは#{(amount * 0.05).floor}ポイントです"
#   end
# end

def calculate_points(amount, is_birthday)
  if amount <= 999
    point = amount * 0.03
  else
    point = amount * 0.05
  end

  if is_birthday
    point *= 5
  end
  puts "獲得したポイントは#{point.floor}ptです"
end

calculate_points(500, false)# → ポイントは15点です
calculate_points(2000, false)# → ポイントは100点です
calculate_points(3000, true)# → ポイントは750点です