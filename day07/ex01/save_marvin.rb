#!/usr/bin/ruby

dictionary = File.open('dictionary.txt')
dictionary_array = dictionary.readlines
dictionary_array.shuffle!

puts "\n<<< SAVE MARVIN >>>\n\n"
puts "Marvin, the Paranoid Android, is on trial for talking to another computer and mak- ing it so depressed that it ceased functioning, leading to the aspyxiation deaths of two Galactic Policeman. In order to get a not guilty verdict, Mavin has to use a certain word that will cause the computer to work again. Find the hidden word to prove Marvin's innocents Be careful! you only have 7 tries before he is executed."
puts ""
puts "Type \"start\" to begin a new game\n"
turn = 0
rematch = nil

print "> "
user_word = gets.chomp.downcase.strip
until user_word == "start"
    print "> "
    user_word = gets.chomp.downcase.strip
end

puts "Generating your word...\n\n"


until rematch == "quit"
    

    dictionary_array.shuffle!
    word = dictionary_array[17]
    word_array = word.chars.to_a
    letters_remaining = dictionary_array[17].chars.to_a
    
    word_array.delete_at(word_array.length-1)
    word_array.delete_at(word_array.length-1)
    letters_remaining.delete_at(letters_remaining.length-1)
    letters_remaining.delete_at(letters_remaining.length-1)
    
    
    
    alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
    "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    lives = 7
    
    
    if rematch == "new" || turn == 0
        word_array.each do |x|
            print "_ "
        end
        puts "\n\n"
        
        puts "Word generated!\n"
        puts "Lives Remaining: #{lives}"
        puts "Letters Remaining: "
        
        alphabet.each do |x|
            print "#{x} "
        end
        puts "\n\n"
        
        puts "Guess a letter: "
        print "> "
        guess = gets.chomp.upcase.strip
        
        until alphabet.include?(guess) == true
            puts "INVALID ENTRY"
            puts "Please guess from the available letters"
            print "> "
            guess = gets.chomp.upcase.strip
        end
        
        
        until lives == 0 || letters_remaining == []
            
            if word_array.include?(guess.downcase) == true
                
                puts "\n\n"
                alphabet.delete(guess)
                letters_remaining.delete(guess.downcase)
                
                if letters_remaining == []
                    break
                end
                
                word_array.each do |x|
                    if alphabet.include?(x.upcase) == true
                        print "_ "
                        else
                        print "#{x.upcase} "
                    end
                end
                
                puts "\n\n"
                puts "Lives Remaining: #{lives}"
                puts "Letters Remaining: "
                
                alphabet.each do |x|
                    print "#{x} "
                end
                puts "\n\n"
                
                puts "Guess a letter: "
                print "> "
                guess = gets.chomp.upcase.strip
                
                until alphabet.include?(guess) == true
                    puts "INVALID ENTRY"
                    puts "Please guess from the available letters"
                    print "> "
                    guess = gets.chomp.upcase.strip
                end
                
                elsif lives > 1
                lives -= 1
                
                puts "WRONG!\n\n"
                alphabet.delete(guess)
                
                word_array.each do |x|
                    if alphabet.include?(x.upcase) == true
                        print "_ "
                        else
                        print "#{x.upcase} "
                    end
                end
                
                puts "\n\n"
                puts "Lives Remaining: #{lives}"
                puts "Letters Remaining: "
                
                alphabet.each do |x|
                    print "#{x} "
                end
                puts "\n\n"
                
                puts "Guess a letter: "
                print "> "
                guess = gets.chomp.upcase.strip
                
                until alphabet.include?(guess) == true
                    puts "INVALID ENTRY"
                    puts "Please guess from the available letters"
                    print "> "
                    guess = gets.chomp.upcase.strip
                end
                
                else 
                lives -= 1
                puts "YOU LOSE!\n"
                puts "The word was #{word_array.to_s.upcase}"
            end  
            
        end
        
        if letters_remaining == []
            puts "CONGRATULATIONS! You got the word #{word_array.to_s.upcase}" 
        end   
        
        turn += 1
        puts "Type \"new\" to play again, type \"quit\" to exit"
        print "> "
        rematch = gets.chomp.downcase.strip
        else
        puts "Please type either \"new\" OR \"quit\""
    end
    
end
