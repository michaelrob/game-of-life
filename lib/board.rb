require 'matrix'
require 'cell'

class Board
  def initialize(width = 80, height = 20)
    @cells = build(width, height)
  end

  def tick!

    # @cells.each do |cell|
    #   if(cell.alive? && cell.live_neighbours.length < 2)
    #     cell.switch!
    #   end
    # end

    end

    return
  end

  def get_cell(col, row)
    @cells[col, row]
  end

private

  def build(width, height)
    Matrix.build(width, height) { |w, h| Cell.new(self, w, h) }
  end
end