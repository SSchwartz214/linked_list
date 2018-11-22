class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def new_node(bet_amount)
    Node.new(bet_amount)
  end

  def append(bet_amount)
    if empty? 
      set_head(bet_amount)
    else
      set_tail(bet_amount)
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

  private

    def set_head(bet_amount)
      @head = new_node(bet_amount)
    end

    def set_tail(bet_amount)
      last_node(@head).next_node = new_node(bet_amount)
    end
end