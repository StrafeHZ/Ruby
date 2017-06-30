#!/usr/bin/ruby
print "Hey, what's your first name ? : "
STDOUT.flush
first_name = gets.chomp
print "And your last name ? : "
STDOUT.flush
last_name = gets.chomp
puts "Well, pleased to meet you #{first_name.capitalize} #{last_name.capitalize}."
