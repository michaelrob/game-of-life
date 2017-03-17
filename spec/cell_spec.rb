require 'spec_helper'
require 'cell'
require 'board'

describe Cell do
  let(:board) { Board.new(1,1) }
  let(:cell) { Cell.new(board, 0, 0) }

  describe '#dead?' do
    context 'cell is dead' do
      it 'should return true' do
        #
      end
    end

    context 'cell is alive' do
      it 'should return false' do
        #
      end
    end
  end

  describe '#alive?' do
    context 'cell is dead' do
      it 'should return false' do
        #
      end
    end

    context 'cell is alive' do
      it 'should return true' do
        #
      end
    end
  end

  describe '#alive!' do
    let(:cell) { Cell.new(board, 0, 0, false) }
    let!(:alive!) { cell.alive! }

    it 'should change cell alive to true' do
      expect(cell.alive?).to eq true
    end
  end

  describe '#switch!' do
    let!(:switch) { cell.switch! }

    context 'cell is dead' do
      let(:cell) { Cell.new(board, 0, 0, false) }

      it 'should change cell alive to true' do
        expect(cell.alive).to eq true
      end
    end

    context 'cell is alive' do
      let(:cell) { Cell.new(board, 0, 0, true) }

      it 'should change cell alive to true' do
        expect(cell.alive).to eq false
      end
    end
  end

  describe '#neighbours' do
  end
end
