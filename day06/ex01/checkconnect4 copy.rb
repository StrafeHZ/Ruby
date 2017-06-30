#!/usr/bin/env ruby

#JKeeler's...
#  ______   ______   .__   __. .__   __.  _______   ______ .___________.     
# /      | /  __  \  |  \ |  | |  \ |  | |   ____| /      ||           |     4
#|  ,----'|  |  |  | |   \|  | |   \|  | |  |__   |  ,----'`---|  |----`   
#|  |     |  |  |  | |  . `  | |  . `  | |   __|  |  |         |  |        
#|  `----.|  `--'  | |  |\   | |  |\   | |  |____ |  `----.    |  |      
# \______| \______/  |__| \__| |__| \__| |_______| \______|    |__|     totally not copyright infringment

def colorize(text, color_code)
 "\e[#{color_code}m#{text}\e[0m"
 end
def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end
def blue(text); colorize(text, 34); end
def yellow(text); colorize(text, 33); end
def cyan(text); colorize(text, 36); end
def white(text); colorize(text, 37); end

# def checknumber(ans)
# 	if ans > 7 or ans <1
# 		puts "Invalid Move"
# 		move = "redo"
# 	elsif row1[ans] == "_"
# 		row1[ans] = piece
# 	elsif row2[ans] == "_"
# 		row2[ans] = piece
# 	elsif row3[ans] == "_"
# 		row3[ans] = piece
# 	elsif row4[ans] == "_"
# 		row4[ans] = piece
# 	elsif row5[ans] == "_"
# 		row5[ans] = piece
# 	elsif row6[ans] == "_"
# 		row6[ans] = piece
# 	elsif row6[ans] != "_"
# 		puts "Row full"	
# 		move = 'redo'
# 	end
# end
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [   
#[ _ [ _ [ _ [ _ [ _ [ _ [ _ [

row9 = [nil, nil, nil ,nil, nil, nil ,nil, nil, nil, nil, nil, nil, nil]
row8 = [nil, nil, nil ,nil, nil, nil ,nil, nil, nil, nil, nil, nil, nil]
row7 = [nil, nil, nil ,nil, nil, nil ,nil, nil, nil, nil, nil, nil, nil]
row6 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]
row5 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]
row4 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]
row3 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]
row2 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]
row1 = [nil, nil, nil, "_", "_", "_", "_", "_", "_", "_", nil, nil ,nil]

gameboard = [row1, row2, row3, row4, row5, row6, row7, row8, row9]


        puts "[ #{row6[3]} [ #{row6[4]} [ #{row6[5]} [ #{row6[6]} [ #{row6[7]} [ #{row6[8]} [ #{row6[9]} ["
        puts "[ #{row5[3]} [ #{row5[4]} [ #{row5[5]} [ #{row5[6]} [ #{row5[7]} [ #{row5[8]} [ #{row5[9]} ["
        puts "[ #{row4[3]} [ #{row4[4]} [ #{row4[5]} [ #{row4[6]} [ #{row4[7]} [ #{row4[8]} [ #{row4[9]} ["
        puts "[ #{row3[3]} [ #{row3[4]} [ #{row3[5]} [ #{row3[6]} [ #{row3[7]} [ #{row3[8]} [ #{row3[9]} ["
		puts "[ #{row2[3]} [ #{row2[4]} [ #{row2[5]} [ #{row2[6]} [ #{row2[7]} [ #{row2[8]} [ #{row2[9]} ["
		puts "[ #{row1[3]} [ #{row1[4]} [ #{row1[5]} [ #{row1[6]} [ #{row1[7]} [ #{row1[8]} [ #{row1[9]} ["
		puts "| 1 | 2 | 3 | 4 | 5 | 6 | 7 |"
play = "1"
win = 0
move = 'redo'
while win != 1
	move = 'redo'
	if play == "2"
		piece = "#{cyan('0')}"
	elsif play == "1"
		piece = "#{red('O')}"
	end
	
	
		
		puts "Player #{play} drop a #{piece}"
		
	until move == 'done'
		move = 'done'
		ans = 1 + rand(7) + 2
		if ans > 9 or ans < 3
			puts "Invalid Move"
			move = "redo"
		elsif row1[ans] == "_"
			row1[ans] = piece
		elsif row2[ans] == "_"
			row2[ans] = piece
		elsif row3[ans] == "_"
			row3[ans] = piece
		elsif row4[ans] == "_"
			row4[ans] = piece
		elsif row5[ans] == "_"
			row5[ans] = piece
		elsif row6[ans] == "_"
			row6[ans] = piece
		elsif row6[ans] != "_"
		puts "Row full"
		move = 'redo'	
		end
		if move == 'redo'
			puts "#{red('redo')}"
		else
			move = 'done'
		end
	end		

        puts "[ #{row6[3]} [ #{row6[4]} [ #{row6[5]} [ #{row6[6]} [ #{row6[7]} [ #{row6[8]} [ #{row6[9]} ["
        puts "[ #{row5[3]} [ #{row5[4]} [ #{row5[5]} [ #{row5[6]} [ #{row5[7]} [ #{row5[8]} [ #{row5[9]} ["
        puts "[ #{row4[3]} [ #{row4[4]} [ #{row4[5]} [ #{row4[6]} [ #{row4[7]} [ #{row4[8]} [ #{row4[9]} ["
        puts "[ #{row3[3]} [ #{row3[4]} [ #{row3[5]} [ #{row3[6]} [ #{row3[7]} [ #{row3[8]} [ #{row3[9]} ["
		puts "[ #{row2[3]} [ #{row2[4]} [ #{row2[5]} [ #{row2[6]} [ #{row2[7]} [ #{row2[8]} [ #{row2[9]} ["
		puts "[ #{row1[3]} [ #{row1[4]} [ #{row1[5]} [ #{row1[6]} [ #{row1[7]} [ #{row1[8]} [ #{row1[9]} ["
		puts "| 1 | 2 | 3 | 4 | 5 | 6 | 7 |"
puts "Checking to see if anyone has won yet..."

	i = 0
	while (i < 6)
		j = 3
		while j < 10
			if gameboard[i][j] === piece && gameboard[i+1][j] === piece && gameboard[i+2][j] === piece && gameboard[i+3][j] === piece
				win = 1
				puts "Player #{play} wins!"
			elsif gameboard[i][j] === piece && gameboard[i][j+1] == piece && gameboard[i][j+2] == piece && gameboard[i][j+3] == piece
				win = 1
				puts "Player #{play} wins!"
			elsif gameboard[i][j] === piece && gameboard[i+1][j+1] == piece && gameboard[i+2][j+2] == piece && gameboard[i+3][j+3] == piece
				win = 1
				puts "Player #{play} wins!"
			elsif gameboard[i][j] === piece && gameboard[i+1][j-1] == piece && gameboard[i+2][j-2] == piece && gameboard[i+3][j-3] == piece
				win = 1
				puts "Player #{play} wins!"
			end
				j = j+1			
		end
			i = i+1
	end	


	if play == "2"
		play = "1"

	elsif play == "1"	
		play = "2"
	end


end
