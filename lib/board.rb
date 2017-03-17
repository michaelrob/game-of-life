require 'matrix'
require 'cell'

class Board
  def initialize(width = 80, height = 20, alive = [])
    @cells = build(width, height, alive)
  end

  def tick!
    @cells.each do |cell|
      change = []

      change.push(cell) if (cell.alive? && cell.live_neighbours.length < 2)
      change.push(cell) if (cell.alive? && cell.live_neighbours.length > 3)
      change.push(cell) if (cell.dead? && cell.live_neighbours.length == 3)

      change.each(&:switch!)
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
      alive = live_cells.include? [w, h]
      Cell.new(self, w, h, alive)
    end
  end
end