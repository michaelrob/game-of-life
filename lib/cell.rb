class Cell
  attr_reader :board, :col, :row
  attr_accessor :alive

  def initialize(board, col, row, alive = false)
    @board = board
    @col = col, @row = row
    @alive = alive
  end

  def dead?
    @alive = false
  end

  def alive?
    @alive
  end

  def alive!
    @alive = true
  end

  def switch!
    @alive = !@alive
  end

  def neighbours()
    neighbours = []

    # top
    neighbours.push(@board.get_cell(self.col[0] - 1, self.row - 1))
    neighbours.push(@board.get_cell(self.col[0] - 1, self.row))
    neighbours.push(@board.get_cell(self.col[0] - 1, self.row + 1))

    # left, right
    neighbours.push(@board.get_cell(self.col[0], self.row - 1))
    neighbours.push(@board.get_cell(self.col[0], self.row + 1))

    # bottom
    neighbours.push(@board.get_cell(self.col[0] + 1, self.row - 1))
    neighbours.push(@board.get_cell(self.col[0] + 1, self.row))
    neighbours.push(@board.get_cell(self.col[0] + 1, self.row + 1))

    neighbours
  end

  def live_neighbours
    self.neighbours.select do |neighbour|
        neighbour && neighbour.alive?
    end
  end
end
