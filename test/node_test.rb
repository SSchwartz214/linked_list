require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_new_returns_a_node
    node = Node.new(10)

    assert_instance_of Node, node
  end

  def test_can_return_value
    node = Node.new(10)
    
    assert_equal 10, node.bet_amount
  end

  def test_next_node_returns_nil
    node = Node.new(10)
    
    assert_nil node.next_node
  end

  def test_tail_returns_true_if_next_node_is_nil
    node = Node.new(10)

    assert_equal node.tail?, true
  end

  def test_next_node_can_change_node_state
    node_1 = Node.new(10)
    node_2 = Node.new(20)

    node_1.next_node = node_2
    node_2 = node_1.next_node

    assert_equal node_2, node_1.next_node
  end
end