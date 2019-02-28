a = [3,6,9,2]
a.unshift(11)
a.push(21)
a << 89
puts a.inspect


h = {
      name: "nik",
      age: 20,
      city: "delhi"
    }
h[:country] = "US" 
puts h.inspect
h[:country] = "India"  
puts h.inspect 
puts h[:city].inspect


array_of_array = [
  [4,7,6],
  [2,41],
  [2]
  ]
puts  array_of_array[1][1].inspect 
array_of_array[2] << 91
array_of_array[1] << 106
puts  array_of_array.inspect

array_of_hash = [
  {name: "nik", age: 20, city: "delhi"}, 
  {name: "bis", age: 20, city: "noida"}, 
  {name: "raj", age: 20, city: "agra"}
  ]
puts array_of_hash[1][:city].inspect
array_of_hash[0][:country] = "India"
array_of_hash[1][:country] = "India"
array_of_hash[2][:country] = "India"
puts array_of_hash.inspect

hash_of_hash = {
  k1: {name: "nik", age: 20, city: "delhi"},
  k2: {name: "bis", age: 20, city: "noida"},
  k3: {name: "raj", age: 20, city: "agra"}
  }
puts hash_of_hash[:k2][:city]
hash_of_hash[:k1][:country] = "Germany"
hash_of_hash[:k2][:country] = "Brazil"
hash_of_hash[:k3][:country] = "UK"
puts hash_of_hash.inspect


  hash_of_array = {
  a: [1,2,5],
  b: [5],
  c: [3,6]
  }
puts hash_of_array[:c][1]
hash_of_array[:a] << 106
hash_of_array[:a] << 'uh'
hash_of_array[:b] << [1,2,3]
hash_of_array[:c] << {k1: "v1", k2: "v2"}

puts hash_of_array.inspect
puts hash_of_array[:c][2][:k2]
puts hash_of_array[:b][1][2] += 50
puts hash_of_array[:c][2][:k2] += ' excellent'