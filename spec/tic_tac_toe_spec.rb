require './lib/tic_tac_toe.rb'
require './lib/board.rb'

describe 'Tic Tac Toe Game' do

  it 'starts a game with 2 players by default' do
    game = Tictactoe.new
    expect(game.players).to eq(2)
  end

  it 'returns the current symbol of the player' do
    game = Tictactoe.new
    expect(game.get_current_player_symbol).to eq('x')
  end

  it 'starts with a new board and a set width of 3' do
    game = Tictactoe.new
    expect(game.board.width).to eq(3)
  end

  it 'starts with a new board and a set width of 3' do
    game = Tictactoe.new
    expect(game.board.empty_spaces).to eq(9)
  end

  it 'starts with a new board and a set width of 3' do
    game = Tictactoe.new
    expect(game.board.total_spaces).to eq(9)
  end

  it 'starts with a new board and a set width of 3' do
    game = Tictactoe.new
    expect(game.board.locate_blank_spaces).to eq([[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]])
  end

end
