require 'spec_helper'
require 'board'

describe Board do
  let(:board) { Board.new(10, 10, [[0,0], [0,1], [0,2]]) }
  let(:board_two) { Board.new(10, 10, [[0,0], [0,1], [0,2], [1,1], [1,0]]) }
  let(:board_three) { Board.new(10, 10, [[0,0], [0,1], [0,2], [1,1], [1,0]]) }
  let(:board_four) { Board.new(10, 10, [[0,0], [0,1], [0,2]]) }

  it 'should generate board' do
  end

  it 'should be 80 wide and 20 high' do
  end

  it 'should generate board with cell' do
  end

  describe '#tick' do
    context 'cell is live' do
      it 'should return dead cell if fiewer than two neighbours are live' do
        board.tick!

        expect(board.cells[0,0].alive?).to be false
      end

      it 'should return dead cell if more than three neighbours are live' do
        board_two.tick!

        expect(board_two.cells[1,1].alive?).to be false
      end

      it 'should return live cell if two or three neighbours are live' do
        board_three.tick!

        expect(board_two.cells[0,1].alive?).to be true
      end
    end

    context 'cell is dead' do
      it 'should return live cell if three neighbours are live' do
      end
    end
  end
end
