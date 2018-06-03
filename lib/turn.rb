def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

user_input = ["1","2","3","4","5","6","7","8","9"]
def input_to_index(user_input)
  user_input.to_i - 1
end  
  
def move(board, input_to_index, character = "X")
  board[input_to_index] = character
end 


def valid_move?(board, input_to_index)
  if (input_to_index.between?(0,8) == true && !position_taken?(board, input_to_index) == true)
   return true
  else return false 
  end  
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, input_to_index)
  smorg = board[input_to_index]
  if (smorg == " " || smorg == "" || smorg == nil)
   return false
  elsif smorg == "X" || "O"
    return true
  end
end  
# turn will repeat loop to ask for input until condition of valid move = true

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
end