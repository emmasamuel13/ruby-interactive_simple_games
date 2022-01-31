board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

count = 0

def placement(board, piece, position)
    board.each_with_index do |_, ind|
        if ind == position - 1
            board[ind] = piece
        end
    end
    return board
end

def location(board, piece, position)
    position = position.to_i
    board = placement(board, piece, position)
    puts board_display(board)
    return board
end

def board_display(board)
    "#{board[0]} #{board[1]} #{board[2]}
#{board[3]} #{board[4]} #{board[5]}
#{board[6]} #{board[7]} #{board[8]}"
end

def game_end(board)
    congrats = "Congratulations, we have a winner!"
    if board == [1, 2, 3, 4, 5, 6, 7, 8, 9]
        return false
    elsif board[0] == board[1] && board[0] == board[2]
        puts congrats
    elsif board[3] == board[4] && board[3] == board[5]
        puts congrats
    elsif board[6] == board[7] && board[6] == board[8]
        puts congrats
    elsif board[0] == board[3] && board[0] == board[6]
        puts congrats
    elsif board[1] == board[4] && board[1] == board[7]
        puts congrats
    elsif board[2] == board[5] && board[2] == board[8]
        puts congrats
    elsif board[0] == board[4] && board[0] == board[8]
        puts congrats
    elsif board[2] == board[4] && board[2] == board[6]
        puts congrats
    else
        return false
    end
end

def turn_play(piece, board)
    puts "where would you like to place your #{piece}?"
    position = gets.chomp
    board = location(board, piece, position)
    return board
end

is_there_a_winner = game_end(board)

while is_there_a_winner == false
    piece = ""
    if count % 2 == 0
        piece = "X"
    else
        piece = "O"
    end
    board = turn_play(piece, board)
    count += 1
    is_there_a_winner = game_end(board)
end

#to improve:
#   if there isn't a winner then nothing happens
#   there is nothing stopping a player from overriding another player's piece
#   currently it is just stated that there is a winner, who is the winner?
#   make an automated version
