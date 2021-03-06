require 'spec_helper'
require 'board'

describe Board do
  let(:board) { Board.new(10, 10, [[0,0], [0,1], [0,2], [2,1], [2,2], [3,0], [3,1], [3,2], [5,1], [5,0], [6,1]]) }

  it 'should generate board' do
    expect(board.cells).not_to be_empty
  end

  it 'should default to 80 wide and 20 high' do
    board = Board.new()

    expect(board.width).to be 80
    expect(board.height).to be 20
  end

  it 'should generate board with cell' do
    expect(board.get_cell(0,0)).to be_an_instance_of(Cell)
  end

  describe '#tick' do
    context 'cell is live' do
      before do
        board.tick!
      end

      it 'should return dead cell if fiewer than two neighbours are live' do
        expect(board.cells[0,0].alive?).to be false
      end

      it 'should return dead cell if more than three neighbours are live' do
        expect(board.cells[2,1].alive?).to be false
      end

      it 'should persist live cell if two neighbours are live' do
        expect(board.cells[5,0].alive?).to be true
      end

      it 'should return live cell if three neighbours are live' do
        expect(board.cells[2,2].alive?).to be true
      end

    end

    context 'cell is dead' do
      before do
        board.tick!
      end

      it 'should return live cell if three neighbours are live' do
        expect(board.cells[1,0].alive?).to be true
      end
    end
  end
end
