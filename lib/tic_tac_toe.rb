class Tictactoe
attr_reader :players, :board, :turn, :player_symbol

  def initialize(players = 2)

    @players = players
    @board = Board.new
    @turn = 'Player 1'
    @player_symbol = ''
  end

  def get_current_player_symbol
    return @player_symbol
  end

  def player_1_play(board, piece, location)
    validate_argument_length(piece)
    validate_argument_name(piece)

    if piece == 'x' || piece == 'o'
      @board.place_piece(board.current_board, piece, location)
      @player_symbol = piece
    end
    switch_turns

    @board
    end

    def switch_turns
      if @turn == 'Player 1'
        @turn = 'Player 2'
      else
        @turn = 'Player 1'
      end
      @turn
    end

    def validate_argument_name(piece)
      raise "Invalid character detected" unless piece == 'x' || piece == 'o'
    end

    def validate_argument_length(piece)
      raise 'Pieces must be a single character only' if piece.length > 1
    end

  end
