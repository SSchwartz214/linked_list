class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(bet_amount)
    node = Node.new(bet_amount)
    if self.empty? 
      @head = node
    else
      last_node(@head).next_node = node
    end
  end

  def count 
    if head.nil?
      0
    else
      1
    end
  end

  def total_winnings
    head.bet_amount
  end

  def last_node(node)
    if node.tail?
      node
    else
      last_node(node.next_node)
    end
  end

  def empty?
    @head.nil?
  end
end