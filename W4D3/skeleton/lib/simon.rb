class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if !@game_over
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    puts "\nsimon:"
    self.add_random_color
    puts @seq
  end

  def require_sequence
    puts "\nnow your turn (enter a color to begin)"
    first = gets.chomp.to_s
    if convert_input(first) != @seq[0]
      @game_over = true
      return
    end

    return if @seq.length == 1

    puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
    puts "now your turn"
    puts first
    (1...@seq.length).each do |i|
      input = gets.chomp.to_s
      if convert_input(input) != @seq[i]
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "sick!"
  end

  def game_over_message
    puts "Score: #{@seq.length - 1}"
    puts "you suck"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def convert_input(input)
    color_abbreviations = {"y" => "yellow", "b" => "blue", "r" => "red", "g" => "green"}
    color_abbreviations[input].nil? ? input : color_abbreviations[input]
  end
end
