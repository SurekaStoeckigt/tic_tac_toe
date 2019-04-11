class Tictactoe
attr_reader :players, :board

  def initialize(players = 2)
    @players = players
    @board = Board.new
  end

  def get_current_player_symbol
    'x'
  end

end
