# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # bottom row
  [0,4,8], # first diagonal
  [6,4,2], # second diagonal
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8] # right column
]


def won?
  WIN_COMBINATIONS.each do |combination|
    win_index_1 = combination[0]
    win_index_2 = combination[1]
    win_index_3 = combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") ||
      (position_1 == "O" && position_2 == "O" && position_3 == "O")
    elsif
      return combination
    else
      false
    end
  end
end

def full?(board)
  filled_cells = board.reject { |cell| cell.empty? }
  filled_cells.size == 9
end

def draw?(board)
  if board.won?
    return false
  else
    if board.full?
      return true
    else
      return false
    end
  end
end
