def tip_calculator()
	meal_price = 55.43
	tax_percentage = 0.06
	tip_percentage = 0.35

	tax_value = meal_price * tax_percentage
	meal_with_tax = meal_price + tax_value
	tip_value = meal_price * tip_percentage
	total_cost = meal_price + tax_value + tip_value

	puts "The pre-tax cost of your meal was " + sprintf("%#g", meal_with_tax)
	puts "At 6%, tax for this meal is $#{tax_value}"
	puts "For a 35% tip, you should leave $#{tip_value}"
	puts "The grand total for this meal is then $#{total_cost}"
end

puts tip_calculator