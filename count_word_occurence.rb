

puts "Enter your phone: "
str = gets
st = str.chomp
total_count = 0
IO.foreach("phone_record.txt") do |line| 
  line.chomp
  record = line.split(" ")
  total_count+= record.count(st)
end
puts total_count

