require_relative "console_game"

class Board
attr_accessor :@board_array

    def initialize()
        @board_array = Array.new(9, "")
    end


    def update_move(position)
        @board_array[position.to_i - 1] = @player_symbol
        @board_array
    end

    def spot_open?(position)
        if @board_array[position-1] == 'x' || @board_array[position-1] == 'o'
            false
        elsif position >= 10 || position <= 0
            false
        else
            true
        end
    end

    def change_player(current_player)
        if current_player == "Player X"
            current_player = "Player O"
        elsif current_player == "Player O"
            current_player = "Player X"
        end
    end

    def test_for_full_board()
        if @board_array.all? {|space| space.include?("x") || space.include?("o")}
            @board_array_full = true
        else
            @board_array_full = false
        end
    end

    def win_condition()
        if @board_array[0] == "x" && @board_array[3] == "x" && @board_array[6] == "x"  || @board_array[0] == "o" && @board_array[3] == "o" && @board_array[6] == "o"
            true
        elsif @board_array[1] == "x" && @board_array[4] == "x" && @board_array[7] == "x" || @board_array[1] == "o" && @board_array[4] == "o" && @board_array[7] == "o"
            true
        elsif @board_array[2] == "x" && @board_array[5] == "x" && @board_array[8] == "x"  || @board_array[2] == "o" && @board_array[5] == "o" && @board_array[8] == "o"
            true
        elsif @board_array[0] == "x" && @board_array[1] == "x" && @board_array[2] == "x"  || @board_array[0] == "o" && @board_array[1] == "o" && @board_array[2] == "o"
            true
        elsif @board_array[3] == "x" && @board_array[4] == "x" && @board_array[5] == "x"  || @board_array[3] == "o" && @board_array[4] == "o" && @board_array[5] == "o"
            true
        elsif @board_array[6] == "x" && @board_array[7] == "x" && @board_array[8] == "x"  || @board_array[6] == "o" && @board_array[7] == "o" && @board_array[8] == "o"
            true
        elsif @board_array[0] == "x" && @board_array[4] == "x" && @board_array[8] == "x"  || @board_array[0] == "o" && @board_array[4] == "o" && @board_array[8] == "o"
            true
        elsif @board_array[2] == "x" && @board_array[4] == "x" && @board_array[6] == "x"  || @board_array[2] == "o" && @board_array[4] == "o" && @board_array[6] == "o"
            true
        else
            false
        end
    end
end