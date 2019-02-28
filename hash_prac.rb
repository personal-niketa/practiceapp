person_details = {"name"=> "nik", "city"=> "delhi", "age"=> 20, "gender"=> "female"}
person_details1 = {name: "nik", city: "delhi", age: 20, gender: "female"}

b=[]
b1 = Array.new

b<<"hello"

a = {}
a1 = Hash.new
a[:name] = "bis"



a[:money] = 6

a[:money] +=6

puts a.inspect
puts person_details1.inspect
puts person_details.inspect
