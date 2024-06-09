def police_trouble(a, b)
  if (a && b) || (!a && !b)
    puts "True"
  else
    puts "False"
  end
end

police_trouble(true, true) 
police_trouble(false, false)
police_trouble(true, false)