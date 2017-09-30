class Board
    attr_accessor :board_array

    def initialize(board_array)
        @board_array = Array.new(9, "")
    end
end