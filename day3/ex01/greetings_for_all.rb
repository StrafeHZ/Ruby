def greetings(words='noble stranger')
	if words.is_a? Integer 
		puts "Error! That doesn't sound like a name."
	else
		if words == ""
			puts "Hello, " + words + '.'
		else
			puts 'Hello, ' + words + '.'
		end
	end
end

#input = gets.chomp
#greetings(input)


greetings
greetings("sam")
greetings "andrew"
greetings 12312312



#if greetings(\n) 
#print words
#end
