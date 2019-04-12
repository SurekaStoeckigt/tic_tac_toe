require './lib/tic_tac_toe.rb'
require './lib/board.rb'

describe 'Tic Tac Toe Game' do

  it 'should be instantiated' do
    game = Tictactoe.new
    expect(game).to be_an_instance_of Tictactoe
  end

  it 'allows player 1 to play' do
    game = Tictactoe.new

    game.player_1_play(game.board, 'x', [3,3])

    expect(game.board.get_contents_of(game.board.current_board, [3,3])).to eq('x')
  end

end
