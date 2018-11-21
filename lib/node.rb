class Node
  attr_reader :value,
              :next_node

  def initialize(value)
    @value = value
    @node_next = nil
  end
end