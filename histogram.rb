#this program constructs a histogram that counts word or number frequencies.
puts "Input your entries seperated by space(Entries can be either numbers or words:)"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each do |word|
    frequencies["#{word}"] += 1
end

frequencies = frequencies.sort_by {|a, b| b}
frequencies.reverse!

frequencies.each do |word, value|
    puts word + " " + value.to_s
end
