#puzzle1
#puzzle1
arr = [3,5,1,2,7,9,8,13,25,32]
puts arr.reduce(:+)
puts arr.reject {|i| i < 10}
#puzzle2
peoplearr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
peoplearr.shuffle.each {|i| puts i}
puts peoplearr.select {|i| i.length > 5 }
#puzzle3
alphabet = ("a".."z").to_a
puts alphabet.shuffle.last
puts alphabet.shuffle.first
shuffled = alphabet.shuffle
puts "#{shuffled.first} is a vowel" if ["a", "e", "i", "o", "u"].include? shuffled.first

#puzzle4
randarr = []
10.times { randarr << rand(55..100)}
puts randarr.sort
puts randarr.max
puts randarr.min


#puzzle5
string = ""
5.times { string << rand(65..90).chr }
puts string

#puzzle6
randomstrings = []
10.times do
    string = ""
    5.times { string << rand(65..90).chr }
    randomstrings << string
end
puts randomstrings