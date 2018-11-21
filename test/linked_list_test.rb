require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node.rb'
require 'pry'

class LinkedListTest < Minitest::Test 
  def test_it_exists
    linked_list = LinkedList.new

    assert_instance_of LinkedList, linked_list
  end

  def test_head_returns_nil_when_first_initialized
    linked_list = LinkedList.new

    assert_nil linked_list.head
  end

  def test_can_append_new_node_to_end_of_list
    linked_list = LinkedList.new

    new_node = linked_list.append(10)

    assert_instance_of Node, new_node
    assert_equal 10, new_node.bet_amount
    assert_equal new_node, linked_list.head
  end

  def test_count_nodes
    linked_list = LinkedList.new
    
    assert_equal 0, linked_list.count

    linked_list.append(10)

    assert_equal 1, linked_list.count
  end

  def test_can_calculate_winnings_when_one_node_present
    linked_list = LinkedList.new
    linked_list.append(10)

    winnings = linked_list.total_winnings

    assert_equal 10, winnings
  end

  def test_append_two_nodes

    linked_list = LinkedList.new
    linked_list.append(10)
    linked_list.append(20)

    second_node_winnings = linked_list.head.next_node.bet_amount

    assert_equal 20, second_node_winnings
  end

  def test_last_node_returns_the_tail

    linked_list = LinkedList.new

    linked_list.append(10)

    last_node = linked_list.last_node(linked_list.head)

    assert_instance_of Node, last_node
    assert_equal 10, last_node.bet_amount
  end

  def test_empty_returns_true_when_head_is_nil
    linked_list = LinkedList.new
    

    assert_equal true, linked_list.empty?
  end

  def test_empty_returns_false_when_head_is_not_nil
    linked_list = LinkedList.new
    linked_list.append(10)

    assert_equal false, linked_list.empty?
  end
end
