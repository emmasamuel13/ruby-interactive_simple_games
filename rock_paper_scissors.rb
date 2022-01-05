puts "Hello, what's your name?"
name = gets.chomp.capitalize

puts "Okay #{name}, are you ready to play rock, paper, scissors? Choose your weapon now"
user_weapon = gets.chomp.downcase

weapon = ["rock", "paper", "scissors"]
comp_weapon = weapon.sample

unless user_weapon == "rock" || user_weapon == "paper" || user_weapon == "scissors"
    puts "Sorry, #{user_weapon} is too powerful for my simple hands"
else
    puts comp_weapon
    if user_weapon == comp_weapon
        puts "Oh no, it's a draw! No winners here"
    elsif user_weapon == "rock" && comp_weapon == "scissors" || user_weapon == "scissors" && comp_weapon == "paper" || user_weapon == "paper" && comp_weapon == "rock"
        puts "Congratulations #{name} you beat me!"
    else user_weapon == "scissors" && comp_weapon == "rock" || user_weapon == "paper" && comp_weapon == "scissors" || user_weapon == "rock" && comp_weapon == "paper"
        puts "HA! SUCKS TO BE YOU #{name.upcase}! HOW DOES IT FEEL TO BE A LOSER?????"
    end
end
