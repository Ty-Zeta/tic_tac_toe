require 'minitest/autorun'
require_relative 'impossible.rb'

class TestImpossible < Minitest::Test

    def test_win_123
        impossible_variable = Impossible.new("X")
        assert_equal(2, impossible_variable.get_move(["X", "X", "", "", "", "", "", "", ""]))
    end

    def test_win_345
        impossible_variable = Impossible.new("X")
        assert_equal(5, impossible_variable.get_move(["", "", "", "X", "X", "", "", "", ""]))
    end

    def test_block
        impossible_variable = Impossible.new("X")
        assert_equal(1, impossible_variable.get_move(["O", "", "O", "", "", "", "", "", ""]))
    end

    def test_block2
        impossible_variable = Impossible.new("X")
        assert_equal(5, impossible_variable.get_move(["", "", "", "O", "O", "", "", "", ""]))
    end

    def test_block3
        impossible_variable = Impossible.new("X")
        assert_equal(8, impossible_variable.get_move(["O", "X", "O", "X", "O", "O", "X", "", ""]))
    end

    def test_center
        impossible_variable = Impossible.new("X")
        assert_equal(4, impossible_variable.get_move(["", "", "", "", "", "", "", "", ""]))
    end

    def test_center2
        impossible_variable = Impossible.new("X")
        assert_equal(4, impossible_variable.get_move(["X", "O", "X", "O", "", "O", "X", "O", "X"]))
    end

    def test_fork
        impossible_variable = Impossible.new("X")
        assert_equal(0, impossible_variable.get_fork(["", "", "", "", "", "", "", "", ""]))
    end

    def test_fork2
        impossible_variable = Impossible.new("X")
        assert_equal(0, impossible_variable.get_move(["", "", "", "", "O", "", "", "", ""]))
    end

    def test_blocks_fork
		impossible_variable = Impossible.new('X')
		assert_equal(4, impossible_variable.get_move(['O', 'X', '', 'X', '', '', 'O', '', '']))
    end

    def test_O_fork_block2
		impossible_variable = Impossible.new('O')
		assert_equal(2, impossible_variable.get_move(['O', '', '', '', '', '', 'X', 'O', 'X']))
    end

    def test_O_blocks_X_corners
		impossible_variable = Impossible.new("O")
        assert_equal(3, impossible_variable.get_move(['', '', 'X', '', 'O', '', 'X', '', '']))
    end

    def test_O_takes_top_side
		impossible_variable = Impossible.new("O")
        assert_equal(1, impossible_variable.get_move(["X", '', "X", '', "O", '', '', "O", "X"]))
    end

end
