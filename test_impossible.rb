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
        assert_equal(1, impossible_variable.get_block(["O", "", "O", "", "", "", "", "", ""]))
    end

    def test_center
        impossible_variable = Impossible.new("X")
        assert_equal(4, impossible_variable.get_center(["", "", "", "", "", "", "", "", ""]))
    end

end
