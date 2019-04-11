class Board
  attr_reader :width, :empty_spaces, :total_spaces

  def initialize
    @width = 3
    @empty_spaces = @width*@width
    @total_spaces = @width*@width
    @blank_spaces_coordinates = [[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]]
  end

 def locate_blank_spaces
   @blank_spaces_coordinates
 end

end
