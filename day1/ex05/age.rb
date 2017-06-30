#!/user/bin/ruby
print "please tell me your age : "
STDOUT.flush
age = gets.chomp
puts "You are currently #{age} years old."
puts "In 10 years, you'll be #{age.to_i + 10} years old."
puts "In 20 years, you'll be #{age.to_i + 20} years old."
puts "in 30 years, you'll be #{age.to_i + 30} years old."
