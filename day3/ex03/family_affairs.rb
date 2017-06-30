class Object
	def find_the_gingers(x)
		x.delete_if {|key, values| values != :red}
	end
end

dupont_family = {"matthew" => :red, "mary" => :blonde, "virginia" => :brown, "gaetan" => :red, "fred" => :red}

puts "#{find_the_gingers(dupont_family).keys}"
