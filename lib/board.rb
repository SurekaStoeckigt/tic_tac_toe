class Board
  attr_reader :width, :empty_spaces, :total_spaces
  BLANK  =nil

  def initialize
    @width = 3
    @empty_spaces = @width*@width
    @total_spaces = @width*@width
    @occupied_spaces = 0
    @blank_spaces_coordinates = [0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]
    @board =  [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]
  end

 def locate_blank_spaces
   @blank_spaces_coordinates
 end

 def blank?
   @empty_spaces == @total_spaces
 end

def place_piece(name, location)
  @board[location.first][location.last] = name
  @empty_spaces -= 1
  @occupied_spaces += 1
  @blank_spaces_coordinates.delete(location)
end

def get_contents_of(location)
  @board[location.first][location.last]
end

private

def initialize_copy(source)
  blank_spaces = @blank_spaces.map(&:dup)
      board = @board.map(&:dup)
      super
      @blank_spaces = blank_spaces
      @board = board
end

end
