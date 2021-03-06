def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  board[index] == " " && index.between?(0,8)
end

def move(board, index, token)
  board[index] = token
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input1 = gets.strip
  input2 = input_to_index(input1)
  if valid_move?(board, input2)
    move(board, input2, "X")
    display_board(board)
  else
    turn(board)

end
end
