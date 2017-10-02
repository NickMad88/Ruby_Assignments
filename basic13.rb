# Print 1-255
puts (1..255).to_a

#Print odd numbers between 1-255
puts (1..255).select(&:odd?)
(1..255).each {|i| puts i if i.odd?}

#Print sum
sum = 0
(0..255).each {|i| puts "New Number: #{i} Sum: #{sum += i}"}

#Iterate through an array
[1,3,5,7,9,13].each {|elem| puts elem}

#Find the max
puts [3,5,1,-2,-1,-22].max

#get the avg
arr = [3,4,1]
puts arr.reduce(:+) / arr.length.to_f

#new odd number array
y = []
(1..255).each {|i| y << i if i.odd?}
puts y

#Greater than Y
arr = [2, 4, 5, 10]
y = 6
puts arr.count {|elem| elem > y }

#square the values
arr = [1,5,10,-2]
puts arr.map! {|elem| elem * elem }

#elminate negative numbers
arr = [3, 5, 2, -1, -22]
puts arr.each_index {|index| arr[index] = 0 if arr[index] < 0 }

#Max, Min, Avg
arr = [2, 4, 1, 22]
{ max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }

#Shifting the values in array
arr = [3,4,1,66,-3]
arr.rotate!(1)[arr.length-1] = 0
puts arr

#number to string
arr = [3,8,-2,1,-4]
puts arr.each_index {|index| arr[index] = "Dojo" if arr[index] < 0 }
