#!/usr/bin/env ruby

def colorize(text, color_code)
	  "\e[#{color_code}m#{text}\e[0m"
	  end

def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end
def blue(text); colorize(text, 34); end
def yellow(text); colorize(text, 33); end
def cyan(text); colorize(text, 36); end
def white(text); colorize(text, 37); end
def blink(text); colorize(text, 5); end
win = "nom"
layout = [nil, 1, 2, 3, 4, 5, 6, 7, 8, 9]
play = "p1"

puts "Welcome to Tic Tac Toe!"
print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
puts "\n"
print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
puts "\n"
print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
puts "\n"

while win == "nom"
	while play == "p1"
		print "Player 1, what is your move? 1-9 "
		ans = gets.chomp.to_i
		puts ans
		if ans >= 10
			puts "Invalid Input. Number is too big"
		else
			if ans <= 0
				puts "Invalid Input. Number is too small"
			else
				if layout[ans] == "X"
					puts "Invalid Input. Space already filled you cheater."
				else
					if layout[ans] == "O"
						puts "Invalid Input. Space already filled."
					else
						layout[ans] = "X"
						play = "p2"
					end
				end
			end
		end
	end
	if layout[1].to_i + layout[2].to_i + layout[3].to_i + layout[4].to_i + layout[5].to_i + layout[6].to_i + layout[7].to_i + layout[8].to_i + layout[9].to_i == 0
		  win = "the_cat"
           play = "p0"
	end

	if  layout[1].to_s + layout[2].to_s + layout[3].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[4].to_s + layout[5].to_s + layout[6].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[7].to_s + layout[8].to_s + layout[9].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[1].to_s + layout[4].to_s + layout[7].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[2].to_s + layout[5].to_s + layout[8].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[3].to_s + layout[6].to_s + layout[9].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[1].to_s + layout[5].to_s + layout[9].to_s == "XXX"
        win = "p1"
        play = "p1"
	elsif layout[3].to_s + layout[5].to_s + layout[7].to_s == "XXX"
        win = "p1"
        play = "p1"
	
	else
		puts "\n"
		print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
		puts "\n"
		print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
		puts "\n"
		print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
		puts "\n"
	end
	

	while play == "p2"
           print "Player 2, what is your move? 1-9 "
                ans = gets.chomp.to_i
                puts ans
                        if ans >= 10
                                puts "Invalid Input. Number is too big"
                        else
                                if ans <= 0
                                        puts "Invalid Input. Number is too small"
                                else
                                        if layout[ans] == "X"
                                                puts "Invalid Input. Space already filled you cheater."
                                        else
                                                if layout[ans] == "O"
                                                        puts "Invalid Input. Space already filled."
                                                else
                                                        layout[ans] = "O"
                                                        play = "p1"
                                                end
                                        end
                                end
                        end
        end
    end
        if layout[1].to_s + layout[2].to_s + layout[3].to_s == "OOO"
       		win = "p2"
       		 play = "p2"
        elsif layout[4].to_s + layout[5].to_s + layout[6].to_s == "OOO"
       		 win = "p2"
        	play = "p2"
        elsif layout[7].to_s + layout[8].to_s + layout[9].to_s == "OOO"
        	win = "p2"
        	play = "p2"
        elsif layout[1].to_s + layout[4].to_s + layout[7].to_s == "OOO"
        	win = "p2"
        	play = "p2"
        elsif layout[2].to_s + layout[5].to_s + layout[8].to_s == "OOO"
       		 win = "p2"
       		 play = "p2"
        elsif layout[3].to_s + layout[6].to_s + layout[9].to_s == "OOO"
       		 win = "p2"
        	play = "p2"
        elsif layout[1].to_s + layout[5].to_s + layout[9].to_s == "OOO"
       		 win = "p2"
        	play = "p2"
        elsif layout[3].to_s + layout[5].to_s + layout[7].to_s == "OOO"
       		 win = "p2"
       		 play = "p2"
		else
			puts "\n"
			print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
			puts "\n"
			print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
			puts "\n"
			print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
			puts "\n"
		end
            puts "\n"
             print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
	            puts "\n"
		             print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
		             puts "\n"
		           print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
			 puts "\n"
if win == "p1"
	puts "Fatality! Player 1 won the game! Get rekt Player 2, but feel free to play again!)}"
elsif win == "p2"
	puts "Fatality! Player 2 won the game! Don't you feel mean beating player 1?"
elsif win == "the_cat"
puts "Cat's game! Nobody won. Tee Hee!"

end
