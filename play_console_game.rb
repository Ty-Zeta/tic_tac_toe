require_relative 'console_game.rb'

game = ConsoleGame.new

game.intro

puts 'Enter 1-9 to choose your square: '
puts " 1 | 2 | 3 "
puts "-----------"
puts " 4 | 5 | 6 "
puts "-----------"
puts " 7 | 8 | 9 "

until game.check_winner || game.board.full_board?
    game.update_board
    
    if game.check_winner == false
        game.change_player
        game.display_board
    else
        game.display_board
    end
end

if game.check_winner
    puts "#{game.active_player.marker} wins!"
else
    puts "It's a tied game!"
end