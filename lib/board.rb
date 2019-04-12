class Board
  attr_reader :width, :empty_spaces, :total_spaces, :current_board


  def initialize
    @width = 3
    @empty_spaces = @width*@width
    @total_spaces = @width*@width
    @occupied_spaces = 0
    @blank_spaces_coordinates = [0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]
    @current_board =  [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]
  end

 def locate_blank_spaces
   @blank_spaces_coordinates
 end

 def blank?
   @empty_spaces == @total_spaces
 end

def place_piece(board, name, location)
  @current_board = board
  @current_board[location.first][location.last] = name
  @empty_spaces -= 1
  @occupied_spaces += 1
  @blank_spaces_coordinates.delete(location)
end

def get_contents_of(board, location)
  @current_board = board
  @current_board[location.first][location.last]
end

def flatten_board
  @current_board.flatten
end

def initialize_copy(source)
      blank_spaces = @blank_spaces_coordinates.map(&:dup)
      board = @current_board.map(&:dup)
      super
      @blank_spaces = blank_spaces
      @current_board = board
end

end
