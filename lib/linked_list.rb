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
    if empty?
      return 0
    else
      count_node(@head, 1)
    end
  end
  
  def to_string
    return "" if empty?
    return sentence_starter if head.tail?
    stringify_node(head.next_node, sentence_starter)
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

    def count_node(node, counter)
      if node.tail?
        counter
      else 
        count_node(node.next_node, counter += 1)
      end
    end

    def concat(bet, node)
      "#{bet.to_s}, next bet was $#{node.bet_amount.to_s}"
    end

    def stringify_node(node, bet)
      return concat(bet, node) if node.tail?
      stringify_node(node.next_node, concat(bet, node))
    end

    def sentence_starter
      "First bet was $#{head.bet_amount.to_s}"
    end
end