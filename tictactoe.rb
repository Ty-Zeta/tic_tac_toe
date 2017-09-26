def update_move(board, player_symbol, position)
p board
p player_symbol
p position

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