class Tictactoe
attr_reader :players, :board

  def initialize(players = 2)
    @players = players
    @board = Board.new
  end

  def get_current_player_symbol
    'x'
  end

  def player_1_play(board, piece, location)
    @board = board
    if piece == 'x' || piece == 'o'
    @board.place_piece(board.current_board, piece, location)
    end
    @board
    end
  end
