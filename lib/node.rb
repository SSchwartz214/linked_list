class Node
  attr_reader :bet_amount
  attr_accessor :next_node

  def initialize(bet_amount)
    @bet_amount = bet_amount
    @node_next = nil
  end

  def tail?
    next_node.nil?
  end
end