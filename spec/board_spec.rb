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

  describe '#tick' do
    context 'cell is live' do
      it 'should return dead cell if fiewer than two neighbours are live' do
      end

      it 'should return live cell if two or three neighbours are live' do
      end

      it 'should return dead cell if more than three neighbours are live' do
      end
    end

    context 'cell is dead' do
      it 'should return live cell if three neighbours are live' do
      end
    end
  end
end
