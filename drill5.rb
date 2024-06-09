price = 300

def calculate_price_with_tax(price)
  tax = 0.1
  return price + price * tax
end

calculate_price_with_tax(price)