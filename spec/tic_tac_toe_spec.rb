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

  it 'counts empty spaces on the board' do
    game = Tictactoe.new
    expect(game.board.empty_spaces).to eq(9)
  end

  it 'counts total spaces on the board' do
    game = Tictactoe.new
    board = Board.new
    expect(game.board.total_spaces).to eq(9)
  end

  it 'returns empty space coordinates on the board' do
    game = Tictactoe.new
    board = Board.new
    expect(game.board.locate_blank_spaces).to eq([[0, 0], [0, 1], [0, 2], [1, 0], [1, 1], [1, 2], [2, 0], [2, 1], [2, 2]])
  end

  it 'has a blank board by default' do
    game = Tictactoe.new
    board = Board.new
    expect(game.board.blank?).to be_truthy
  end

  it 'player 1 can put an x on the location(3,3)' do
    game = Tictactoe.new
    board = Board.new
    game.player_1_play(board, 'x', [3,3])
    expect(game.board.empty_spaces).to eq(8)
  end

  it 'player 1 can put an x on the location(3,3)' do
    game = Tictactoe.new
    board = Board.new
    game.player_1_play(board, 'x', [3,3])
    expect(game.board.get_contents_of(board.board, [3,3])).to eq('x')
  end

  it 'should have a blank board after a player plays' do
    game = Tictactoe.new
    board = Board.new
    game.player_1_play(board, 'x', [3,3])
    expect(game.board.blank?).to be_falsey
  end

  it 'only accepts x and o' do
    game = Tictactoe.new
    board = Board.new
    game.player_1_play(board, 'a', [3,3])
    expect(game.board.blank?).to be_truthy
  end

  it 'should be returned after placing a piece' do
    game = Tictactoe.new
    board = Board.new
    expect(game.player_1_play(board, 'x', [3,3])).to be_an_instance_of Board
  end

  it 'can create a copy of itslef' do
    game = Tictactoe.new
    board = Board.new
    game.player_1_play(board, 'x', [3,3])
    board_copy = Board.new.clone
    game.player_1_play(board_copy, 'x', [2,3])
    game.player_1_play(board,'x', [2,2])
    p board_copy
    expect(game.board.get_contents_of(board.board, [2,3])).to eq(nil)
    expect(game.board.get_contents_of(board_copy.board, [2,3])).to eq('x')
  end

end
