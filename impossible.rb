class Impossible
    attr_accessor :marker

    def initialize(marker)
        @marker = marker
    end

    def get_move(ttt_board)

        possible_moves = [[ttt_board[0], ttt_board[1], ttt_board[2]], [ttt_board[3], ttt_board[4], ttt_board[5]], [ttt_board[6], ttt_board[7], ttt_board[8]]]
        winning_empty_space = 0
        possible_winning_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        puts "#{possible_winning_combos[1][2]}"

        possible_moves.each_with_index do |winning_combo_line, index_position|
            if winning_combo_line.count(marker) == 2 && winning_combo_line.include?('')
                winning_empty_space = winning_combo_line.index('')
            end
        end
        winning_empty_space
    end
end