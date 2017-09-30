class Human
    attr_reader :player_symbol

    def initialize
        @player_symbol = player_symbol
    end

    def get_move()
        puts "Your move"
        move = gets.chomp.to_i
            if open_spot?
    end

end