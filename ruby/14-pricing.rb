def pricing(base, people, type)
  flat_markup = 0.05
  labour_markup = 0.012
  markup_types = {
    food: 0.13,
    pharma: 0.075,
    electronics: 0.02,
    other: 0
  }

  #CALCULATE THE FLAT MARKUP
  price = base + (base * flat_markup)

  #CALCULATE THE LABOUR MARKUP
  labour_cost = 0
  people.times do
    labour_cost += (price * labour_markup)
  end

  #CALCULATE THE TYPE MARKUP
  type_cost = (price * markup_types[type.to_sym])

  #RETURN THE TOTAL
  total = price + labour_cost + type_cost
end

p pricing(1299.99, 3, 'food')
p pricing(5432.00, 3, 'pharma')
p pricing(12456.95, 4, 'other')
