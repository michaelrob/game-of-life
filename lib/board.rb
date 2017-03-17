require 'matrix'
require 'cell'

class Board
  def initialize(width = 80, height = 20, alive = [])
    @cells = build(width, height, alive)
  end

  def tick!
    @cells.each do |cell|
      cell.switch! if (cell.alive? && cell.live_neighbours.length < 2)
      cell.switch! if (cell.alive? && cell.live_neighbours.length > 3)
      cell.switch! if (cell.dead? && cell.live_neighbours.length == 3)
      cell.alive! if (cell.alive? && cell.live_neighbours.length.between?(2 ,3))
    end
  end

  def cells
    @cells
  end

  def get_cell(col, row)
    @cells[col, row]
  end

private

  def build(width, height, live_cells)
    Matrix.build(width, height) do |w, h|
      live_cells.include? [w, h] ? alive = true : alive = false
      Cell.new(self, w, h, alive)
    end
  end
end