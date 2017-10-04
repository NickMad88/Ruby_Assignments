# x = {"first_name" => "Coding", "last_name" => "Dojo"}

# puts x["first_name"], x["last_name"]
# puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

# y = {:first_name => "Coding", :last_name => "Dojo"}
# puts "Y is", y 
# puts y[:first_name], y[:last_name]

# puts "DELETING :first_name"
# y.delete(:first_name)
# puts "Y is now", y

# if y.has_key?(:first_name)
#     puts "Y has the key called :firs_name"
# else
#     puts "Y does NOT have the key called :first_name"
# end

# if y.has_value?("Dojo")
#     puts "Y has a value called Dojo"
# else
#     puts "Y does NOT have a value called Dojo"
# end


def new_user greeting: "Welcome", first_name: "first", last_name: "last"
    puts "#{greeting}, #{first_name} #{last_name}"
end
our_user = {first_name: "Oscar", last_name: "Smith"}
new_user
new_user our_user