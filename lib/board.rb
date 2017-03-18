require 'matrix'
require 'cell'

class Board
  def initialize(width = 80, height = 20, alive = [])
    @width = width
    @height = height
    @cells = build(width, height, alive)
  end

  def tick!
    change = []

    @cells.each do |cell|
      change.push(cell) if (cell.alive? && cell.live_neighbours.length < 2)
      change.push(cell) if (cell.alive? && cell.live_neighbours.length > 3)
      change.push(cell) if (cell.dead? && cell.live_neighbours.length == 3)
    end

    change.each(&:switch!)
  end

  def cells
    @cells
  end

  def get_cell(col, row)
    @cells[col, row]
  end

  def display()
    if @cells
      @cells.each do |cell|
        print '@' if cell.alive? == true
        print '.' if cell.alive? == false

        puts '' if cell.row == @width - 1
      end
    else
      puts 'There are no cells to display :('
    end
  end

private

  def build(width, height, live_cells)
    Matrix.build(height, width) do |w, h|
      alive = live_cells.include? [w, h]
      Cell.new(self, h, w, alive)
    end
  end
end