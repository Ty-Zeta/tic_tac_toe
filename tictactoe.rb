def update_move(board, player_symbol, position)
board[position-1] = player_symbol
board
end

def spot_open?(board, position)
    if board[position-1] == 'x' || board[position-1] == 'o'
        false
    elsif position >= 10 || position <= 0
        false
    else
        true
    end
end

def change_player(current_player)
    if current_player == "Player X"
        "Player O it is now your turn"
    elsif current_player == "Player O"
        "Player X it is now your turn"
    end
end

def test_for_full_board(board)
    if board.all? {|space| space.include?("x") || space.include?("o")}
        board_full = true
    else
        board_full = false
    end
end