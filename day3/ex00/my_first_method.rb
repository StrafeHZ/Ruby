ARGV[0]
def dog(str)
	str = "#{str}"
	str = str.upcase
	if (str).length > 10
	print (str)
	else
		return nil
	end
end
puts dog (ARGV[0])
