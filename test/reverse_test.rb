require 'test/unit'

require_relative "../lib/reverse"

class ReverseTest < Test::Unit::TestCase
  def test_reverse_nothing
    assert_equal [].reverse, [].go_reverse
  end

  def test_reverse_one
    assert_equal [1].reverse, [1].go_reverse
  end

  def test_reverse_many
    assert_equal [1, "a", 2.0, :bar].reverse, [1, "a", 2.0, :bar].go_reverse
  end
end
