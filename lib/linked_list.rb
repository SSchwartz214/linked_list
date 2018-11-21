class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(value)
    @head = Node.new(value)
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
end