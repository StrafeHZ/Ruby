array=ARGV
if ARGV.length > 0
	     puts "parameters: " + ARGV.count.to_s
		 puts ARGV[0].to_s + ": " + ARGV[0].size.to_s
		 puts ARGV[1].to_s + ": " + ARGV[1].size.to_s
		 puts ARGV[2].to_s + ": " + ARGV[2].size.to_s
else
	    puts "none"
end
