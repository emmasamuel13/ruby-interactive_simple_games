#puts "Hi, let's play noughts and crosses, do you know how to play?"
#y_or_n = gets.chomp.downcase
#if y_or_n == "yes"
#    puts "Wonderful, I'll be noughts and you'll be crosses, you start, let's go!"
#elsif y_or_n == "no"
#    puts "Okay, we have nine spaces in a three by three grid, we take it in turns to put our symbol (noughts or crosses) in the grid, first to get three in a row, either vertically, horizontally or diagonally wins!
#    I'll be noughts and you'll be crosses, you start, let's go!"
#else
#    "Sorry, I'm gonna need a yes or a no!"
#end
#

puts "1 2 3
4 5 6
7 8 9

That's our grid, when you know where you want to put your cross simply type the number and I'll put it there!

Where would you like to put your first cross?"

z = gets.chomp.to_f

og_grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]

grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]

if grid.include?(z)
    grid = grid.map do |i|
        if i == z
            "X"
        else
            i
        end
    end
    puts "#{grid[0..2]}
#{grid[3..5]}
#{grid[6..8]}"
else
    puts "Please put a number from 1 to 9"
end
