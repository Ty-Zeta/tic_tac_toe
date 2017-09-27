require "minitest/autorun"
require_relative "tictactoe.rb"

class TestTicTacToe < Minitest::Test

    def test_1_equals_1
        assert_equal(1,1)
    end

    def test_first_spot
        board = ['1','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','7','8','9'], update_move(board, 'x', 1))
    end

    def test_second_spot
        board = ['x','2','3','4','5','6','7','8','9']
        assert_equal(['x','2','3','4','5','6','o','8','9'], update_move(board, 'o', 7))
    end

    def test_availibility
        board = ['x','2','3','4','5','6','o','8','9']
        position = 8
        assert_equal(true, spot_open?(board, position))
    end

    def test_10
        board = ['x','2','3','4','5','6','o','8','9']
        position = 10
        assert_equal(false, spot_open?(board, position))
    end

    def test_current_player
        assert_equal("Player X it is now your turn", change_player("Player O"))
    end

    def  test_full_board
        board = ['x', 'o', 'x', 'o', 'x', 'o', 'x', 'o', 'x']
        assert_equal(true, test_for_full_board(board))
    end

    def test_win_147
        board = ['x', 'o', '3', 'x', 'o', '6', 'x', '8', '9']
        assert_equal(true, win_condition(board))
    end

    def test_win_258
        board = ['1','x','3','4','x','6','7','x','9']
        assert_equal(true, win_condition(board))
    end

    def test_win_369
        board = ['1','2','x','4','5','x','7','8','x']
        assert_equal(true, win_condition(board))
    end

    def test_win_159
        board = ['x','2','3','4','x','6','7','8','x']
        assert_equal(true, win_condition(board))
    end

    def test_win_357
        board = ['1','2','x','4','x','6','x','8','9']
        assert_equal(true, win_condition(board))
    end

    def test_win_123
        board = ['o','o','o','4','5','6','7','8','9']
        assert_equal(true, win_condition(board))
    end

    def test_win_456
        board = ['1','2','3','o','o','o','7','8','9']
        assert_equal(true, win_condition(board))
    end

    def test_win_789
        board = ['1','2','3','4','5','6','o','o','o']
        assert_equal(true, win_condition(board))
    end

    def test_fail
        board = ['x','x','o','o','o','x','x','o','x']
        assert_equal(false, win_condition(board))
    end
end