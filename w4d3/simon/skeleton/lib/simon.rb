class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    while game_over == false
      self.take_turn
    end
    game_over_message
    sleep(2)
    reset_game
  end

  def take_turn
    system("clear")
    puts "Ready"
    sleep(2)
    show_sequence
    player_seq = require_sequence
    @game_over = true if player_seq != @seq 
    if @game_over == false
      round_success_message
      sleep(2)
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each.with_index do |ele, i|
      system("clear")
      puts i
      puts "#{ele} "
      sleep(1)
    end
    system("clear")
  end

  def require_sequence
    puts "Match the sequence"
    new_array = []
    i = 0
    while i < @sequence_length
      puts i 
      new_array << gets.chomp
      system("clear")
      i+=1
    end
    new_array
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    if @game_over == false
      puts "Round Win"
    end
  end

  def game_over_message
    if @game_over == true 
      puts "Game Over"
    end
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

#p = Simon.new.play
