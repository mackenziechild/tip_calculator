def tip_calculator()
	puts "What was the pre-tax cost of your meal?"
	meal_price = Float(gets)
	puts "What is your local tax rate?"
	tax_percentage = Float(gets)
	puts "What percentage would you like to tip?"
	tip_percentage = Float(gets)

	def value(price, percentage)
		value_amount = price * percentage / 100
		return value_amount
	end

	tax_value = value(meal_price, tax_percentage)
	meal_with_tax = meal_price + tax_value
	tip_value = value(meal_price, tip_percentage)
	total_cost = meal_with_tax + tip_value

	puts "The pre-tax cost of your meal was $%.2f.\n" % meal_price
	puts "At %d%%, tax for this meal is $%.2f.\n" % [tax_percentage, tax_value]
	puts "For a %d%% tip, you should leave $%.2f.\n" % [tip_percentage, tip_value]
	puts "The grand total for this meal is then $%.2f.\n" % total_cost
end

puts tip_calculator