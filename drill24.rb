def sleep_in(is_weekday, is_vacation)
  if is_weekday && !is_vacation
    puts "False"
  else
    puts "True"
  end
end

sleep_in(false, false)# → true
sleep_in(true, false)# → false
sleep_in(false, true)# → true