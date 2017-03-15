require 'spec_helper'
require 'board'

describe Board do
  let(:board) { Board.new(10, 10) }

  it 'should generate board' do
  end

  it 'should be 80 wide and 20 high' do
  end

  it 'should generate board with cell' do
  end

  describe '#cells' do
    it 'should flatten cells' do
      expect(board.cells.length).to be 45
    end
  end

  describe '#tick' do
    it 'should do the things' do
      cell = board.get_cell(2, 2)
      cell.alive!

      cell_at_left = board.get_cell(2, 3)
      cell_at_left.alive!

      cell_at_right = board.get_cell(1, 2)
      cell_at_right.alive!

      world = board.tick!
      binding.pry
    end
  end
end
