require 'minitest/autorun'
require_relative 'impossible.rb'

class TestImpossible < Minitest::Test

    def test_123
        impossible_variable = Impossible.new("X")
        assert_equal(2, impossible_variable.get_move(["X", "X", "", "", "", "", "", "", ""]))
    end

    def test_345
        impossible_variable = Impossible.new("X")
        assert_equal(5, impossible_variable.get_move(["", "", "", "X", "X", "", "", "", ""]))
    end

    def test_block
        impossible_variable = Impossible.new("X")
        assert_equal(1, impossible_variable.get_move(["O", "", "O", "", "", "", "", "", ""]))
    end

end
