a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

x = (a+b)-c
puts x.to_s

a.delete(6)
puts a.reverse
puts a[0]
puts a[1]
puts b.length

puts b.class
puts b.shuffle.join("-")

puts a.to_s