class Node
  attr_accessor :bet_amount, :next_node

  def initialize(bet_amount)
    @bet_amount = bet_amount
    @next_node = nil
  end

  def tail?
    next_node.nil?
  end
end