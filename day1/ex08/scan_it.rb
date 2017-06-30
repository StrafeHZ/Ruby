a= ARGV[0]
noodle= ARGV[1]
if ARGV.length == 2
	a=noodle.scan(/(?=#{a})/).count
	puts a
else
	puts "none"
end
