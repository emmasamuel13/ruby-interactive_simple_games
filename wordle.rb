words = ["other", "there", "which", "their", "about", "write", "would", "these", "thing", "could", "sound", "water", "first", "place", "where", "after", "round", "every", "under", "great", "think", "cause", "right", "three", "small", "large", "spell", "light", "house", "again", "point", "world", "build", "earth", "stand", "found", "study", "still", "learn", "plant", "cover", "state", "never", "cross", "start", "might", "story", "while", "press", "close", "night", "north", "white", "begin", "paper", "group", "music", "those", "often", "until", "river", "carry", "began", "horse", "watch", "color", "plain", "usual", "young", "ready", "above", "leave", "black", "short", "class", "order", "south", "piece", "since", "whole", "space", "heard", "early", "reach", "table", "vowel", "money", "serve", "voice", "power", "field", "pound", "drive", "stood", "front", "teach", "final", "green", "quick", "ocean", "clear", "wheel", "force", "plane", "stead", "laugh", "check", "shape", "bring", "paint", "among", "grand", "heart", "heavy", "dance", "speak", "count", "store", "train", "sleep", "prove", "catch", "mount", "board", "glass", "grass", "visit", "month", "happy", "eight", "raise", "solve", "metal", "seven", "third", "shall", "floor", "coast", "value", "fight", "sense", "quite", "broke", "scale", "child", "speed", "organ", "dress", "cloud", "quiet", "stone", "climb", "stick", "smile", "trade", "mouth", "exact", "least", "shout", "wrote", "clean", "break", "blood", "touch", "brown", "equal", "woman", "whose", "radio", "spoke", "human", "party", "agree", "chair", "fruit", "thick", "guess", "sharp", "crowd", "sight", "hurry", "chief", "clock", "enter", "major", "fresh", "allow", "print", "block", "chart", "event", "quart", "truck", "noise", "level", "throw", "shine", "wrong", "broad", "anger", "claim", "sugar", "death", "skill", "women", "thank", "match", "steel", "guide", "score", "apple", "pitch", "dream", "total", "basic", "smell", "track", "shore", "sheet", "favor", "spend", "chord", "share", "bread", "offer", "slave", "chick", "enemy", "reply", "drink", "occur", "range", "steam", "meant", "teeth", "shell"]

puts "The rules are simple, I think of a word, you try and guess the word. You get 6 attempts to find the word.
I will help you out though, I'll check each letter to see if it's in the word. If it is then I'll capitalise it to show it's included"

choice = words.sample

word = []

chosen = choice.upcase.split("")
chosen.each do |w|
    word << "-#{w}-"
end

word.join(" ")

guess = []
count = 0

while guess != word && count < 6
    guess = []
    puts "
You have #{6 - count} guesses remaining, what word do you think it could be?"
    input = gets.chomp
    letters = input.upcase.split("")
    letters.each do |letter|
        if word.include? "-#{letter}-"
            guess << "-#{letter}-"
        else
            guess << letter.downcase
        end
    end
    print guess.join(" ")
    count += 1
end

if guess == word
    puts "Well done, you're correct, the word you were looking for was #{choice.upcase}!"
else
    puts "Oh no, better luck next time! The word you were looking for was #{choice.upcase}."
end

#make sure the word has 5 letters, otherwise don't count it as a turn
#make sure the word is in the original array, otherwise guess again
#check if the letter is in the right place in the word
#change the response based on how many times a letter is in either the chosen word or the input word
