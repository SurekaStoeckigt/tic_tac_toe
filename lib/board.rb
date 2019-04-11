class Board
  attr_reader :width, :empty_spaces

  def initialize
    @width = 3
    @empty_spaces = @width*@width
  end


end
