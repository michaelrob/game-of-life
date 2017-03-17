require 'spec_helper'
require 'board'

describe Board do
  let(:board) { Board.new(10, 10, [[2,2], [2,3], [1,2]]) }

  it 'should generate board' do
  end

  it 'should be 80 wide and 20 high' do
  end

  it 'should generate board with cell' do
  end

  describe '#tick' do
    it 'should do the things' do
      world = board.tick!
      binding.pry
    end
  end
end
