require 'spec_helper'
require 'cell'

describe Cell do
  let(:board) { Board.new }
  let(:cell) { Cell.new(board, 0, 0) }

  describe '#dead?' do
    contex 'cell is dead' do
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
    it 'should change cell alive to true' do
      #
    end
  end

  describe '#switch!' do
    context 'cell is dead' do
      it 'should change cell alive to false' do
        #
      end
    end

    context 'cell is alive' do
      it 'should change cell alive to true' do
        #
      end
    end
  end

  describe '#neighbours' do
  end
end
