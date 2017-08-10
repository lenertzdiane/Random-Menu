puts "How many items would you like to enter?"
chosen_num = gets.chomp.to_i
adj = []
style = []
food = []

chosen_num.times do
  puts "Please enter an adjective"
  adj << gets.chomp
end
chosen_num.times do
  puts "Please enter a style"
  style << gets.chomp
end
chosen_num.times do
  puts "Please enter a food"
  food << gets.chomp
end

adj2 = adj.clone
style2 = style.clone
food2 = food.clone

puts "How many menu items (#{chosen_num} or under) would you like to display?"
number = gets.chomp.to_i
until number<=chosen_num
  puts "Choose a number smaller than #{chosen_num}!"
  number = gets.chomp.to_i
end
x=1
number.times do
  puts "#{x} #{adj2.delete_at(rand(adj2.length))} #{style2.delete_at(rand(style2.length))} #{food2.delete_at(rand(food2.length))}"
  x+=1
end
