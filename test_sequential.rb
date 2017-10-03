require 'minitest/autorun'
require_relative 'sequential.rb'

class TestSequential < Minitest::Test

    def test_for_X
        sequential_variable = Sequential.new("X")
        assert_equal("X", sequential_variable.marker)
    end

    def test_for_first_available_spot
        sequential_variable = Sequential.new("X")
        assert_equal(0, sequential_variable.get_move(["", "", "", "", "", "", "", "", ""]))
    end

    def test_for_second_available_spot
        sequential_variable = Sequential.new("X")
        assert_equal(1, sequential_variable.get_move(["X", "", "", "", "", "", "", "", ""]))
    end
    def test_for_third_available_spot
        sequential_variable = Sequential.new("X")
        assert_equal(2, sequential_variable.get_move(["X", "O", "", "", "", "", "", "", ""]))
    end
end