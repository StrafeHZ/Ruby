#!usr/bin/ruby
def sort_by_date(arr)
	array = Array.new
	sortarray = arr.sort_by {|key, value| 
	value[:year_of_birth] 
	}
	sortarray.each {|key, value| 
		puts "#{value[:name]} is a great person born in #{value[:year_of_birth]}."	
	}
	#print h[:name]
end

arr = {
	:ada => { :name => "Ada Lovence", :year_of_birth => "1815" },
	:cecilia => { :name => "Cecila Payne", :year_of_birth => '1900' },
	:lisa => { :name => "Lisa Meitner", :year_of_birth => "1878" },
	:grace => { :name => "Grace Hopper", :year_of_birth => "1906"}
}

sort_by_date(arr)

