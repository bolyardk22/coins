def how_much_change
	p "How much change do you have today?"
	amount = gets.to_i
end

def change_hashes(money)
  change = Hash[:quarters, 0, :dimes, 0, :nickels, 0, :pennies, 0]
  coin_values = Hash[25, :quarters, 10, :dimes, 5, :nickels, 1, :pennies]
  
  coin_values.keys.each do |coin|
    
    while money >= coin
      change[coin_values[coin]] += 1
      money -= coin
    end
  end
  
  change
end

p change_hashes(how_much_change)