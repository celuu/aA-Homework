class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    array = Array.new(14){Array.new([])}
    
    (0..5).each do |i|
      array[i] << :stone << :stone << :stone << :stone
    end

    (7..12).each do |i|
      array[i] << :stone << :stone << :stone << :stone
    end
    array
  end

  def valid_move?(start_pos)
    if start_pos == 6 || start_pos == 13 || start_pos  > 12 || start_pos < 0
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    current_pos = @cups[start_pos]
    @cups[start_pos] = []
    cup_idx = start_pos
    
    # until current_pos.empty?
    # while current_pos > 0
    #   @cups[start_pos + i]current_pos.pop
      
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..5).all? do |i|
      @cups[i] == []
    end ||
    (7..12).all? do |i|
      @cups[i] == []
    end
  end

  def winner
    p1_total = @cups[6].length
    p2_total = @cups[13].length

    if p1_total == p2_total
      return :draw
    else
      if p1_total > p2_total
        @name1
      else
        @name2
      end
    end
  end
end
