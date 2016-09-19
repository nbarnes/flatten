
require_relative './minitest_helper.rb'
require_relative '../flatten.rb'
require 'pry'

class TestFlatten < MiniTest::Test

  def test_flatten1
    test_case = [1, 2, 3, 4]
    assert_equal [1, 2, 3, 4], flatten(test_case)
  end

  def test_flatten2
    test_case = []
    assert_equal [], flatten(test_case)
  end

  def test_flatten3
    test_case = [[], []]
    assert_equal [], flatten(test_case)
  end

  def test_flatten4
    test_case = [[1, 2], [], [3, [4, 5]], [[6]]]
    assert_equal [1, 2, 3, 4, 5, 6], flatten(test_case)
  end

  def test_flatten5
    test_case = [1, [2, [3, [4, [5]] ] ] ]
    assert_equal [1, 2, 3, 4, 5], flatten(test_case)
  end

end
