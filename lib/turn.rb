def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !(0..8).include?(index)
    return false
  end

  if (board[index] == "X") || (board[index] == "O")
    return false
  end

  if ((0..8).include?(index)) && ((board[index] == " ") || (board[index] == "") || (board[index] == nil))
    return true
  end
end

def input_to_index(position)
  index = (position.to_i) - 1
  return index
end

def move( board, index, token = "X" )

  board[index] = token
  return board
end
