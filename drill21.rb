def parrot_trouble(talking, hour)
  if talking && !(hour == 7..20)
    puts "NG"
  else
    puts "OK"
  end
end

parrot_trouble(true, 6) #→ NG
parrot_trouble(true, 7) #→ OK
parrot_trouble(false, 6) #→ OK
parrot_trouble(false, 7) #→ OK
parrot_trouble(true, 22) #→ NG
parrot_trouble(true, 1) #→ NG