require 'minitest/autorun'
require_relative 'board.rb'

class TestBoard < Minitest::Test

    def test_board_returns
        board_variable = Board.new
        assert_equal(["", "", "", "", "", "", "", "", ""], board_variable.ttt_board)
    end

    def test_update_board_1st_position
        board_variable = Board.new
        board_variable.update_position(0, "X")
        assert_equal(["X", "", "", "", "", "", "", "", ""], board_variable.ttt_board)
    end

    def test_valid_position_1st_last_position
        board_variable = Board.new
        board_variable.update_position(0, "X")
        board_variable.update_position(8, "O")
        assert_equal(["X", "", "", "", "", "", "", "", "O"], board_variable.ttt_board)
    end

    def test_everything_full_but_one_spot
        board_variable = Board.new
        board_variable.ttt_board = ["X", "X", "O", "O", "O", "X", "X", "X", ""]
        board_variable.update_position(8, "O")
        assert_equal(["X", "X", "O", "O", "O", "X", "X", "X", "O"], board_variable.ttt_board)
    end

    def test_valid_position
        board_variable = Board.new
        board_variable.ttt_board = ["X", "", "", "", "", "", "", "", "O"]
        assert_equal(true, board_variable.valid_position?(3))
        assert_equal(false, board_variable.valid_position?(0))        
        assert_equal(true, board_variable.valid_position?(7))
    end

    def test_full_board
        board_variable = Board.new
        board_variable.ttt_board = ["X", "X", "O", "O", "O", "X", "X", "X", "O"]
        assert_equal(true, board_variable.full_board?)
    end

    def test_full_board2
        board_variable = Board.new
        board_variable.ttt_board = ["X", "X", "O", "", "O", "X", "X", "X", "O"]
        assert_equal(false, board_variable.full_board?)
    end

    def test_win
        board_variable = Board.new
        board_variable.ttt_board = ["X", "X", "X", "", "", "", "", "", ""]
        assert_equal(true, board_variable.winner?("X"))
    end
end