array_of_hash = [
  {name: "nik", Eng: 30, Maths: 50, Hindi: 45}, 
  {name: "bis", Eng: 38, Maths: 42, Hindi: 47}, 
  {name: "raj", Eng: 48, Maths: 48, Hindi: 48}
  ]
total_no = {}  
array_of_hash.each do |h|
  total_no[h[:name]] = h[:Eng] + h[:Maths] + h[:Hindi]  
end

puts total_no.inspect


