def average_mark(grades)
	k =grades.values.reduce(:+) / grades.values.length
end

class_csci101 = {"margot" => 18, "june" => 8, "colin" => 15, "lewis" => 9}
class_csci102 = {"qeuntin" => 17, "julie" => 15, "mark" => 8, "stephanie" => 13}
class1 = average_mark class_csci101
class2 = average_mark class_csci102
#p class1
puts "Average mark for the CSCI 101 class: #{class1}."
puts "Average mark for the CSCI 102 class: #{class2}."
