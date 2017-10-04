class Impossible
    attr_accessor :marker, :opponent

    def initialize(marker)
        @marker = marker
        @opponent = get_opponent(@marker)
    end

    def get_opponent(marker)
        opponent = 'X'

        if marker == 'X'
            opponent = 'O'
        else
            opponent = 'X'
        end
    end

    def get_win_or_block(ttt_board, player)

        possible_moves = [[ttt_board[0], ttt_board[1], ttt_board[2]], [ttt_board[3], ttt_board[4], ttt_board[5]], [ttt_board[6], ttt_board[7], ttt_board[8]]]
        move = 0
        possible_winning_combos = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

        possible_moves.each_with_index do |winning_combo_line, index_position_of_winning_array_set|
            if winning_combo_line.count(player) == 2 && winning_combo_line.count('') == 1
                winning_empty_space = winning_combo_line.index('')
                move = possible_winning_combos[index_position_of_winning_array_set][winning_empty_space]
            else
                move
            end
        end
        move
    end

    def win(ttt_board)
        get_win_or_block(ttt_board, marker)
    end

    def block(ttt_board)
        get_win_or_block(ttt_board, opponent)
    end

    def get_move(ttt_board)
        win(ttt_board)
        block(ttt_board)
    end
end