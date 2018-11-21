require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_new_returns_a_node
    node = Node.new(1)

    assert_instance_of Node, node
  end

  def test_can_return_value
    node = Node.new(1)
    
    assert_equal 1, node.value
  end

  def test_next_node_returns_nil
    node = Node.new(1)
    
    assert_nil node.next_node
  end
end