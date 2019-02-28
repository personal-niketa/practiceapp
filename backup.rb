results = []
IO.foreach("phone_record.txt") do |line| 
  record = line.split(" ")
  results << record  
end
puts results
puts "Enter your number: "
number = gets
# puts "#{number.inspect}"
num = number.chomp
puts num.inspect
a = results.map{|i| i.map(&:to_i)}
puts a.inspect
# results.each do |r|
#   r.each do |r_detail|
#     if results[r][r_detail].include?(num)
#       puts "hi"
#     end
#   end
# end


####################  read all the data from file phone_record.txt and print only unique phone numbers from script ###################

results = []
IO.foreach("phone_record.txt") do |line| 
  record = line.split(" ")
  results << record[0]  
end
results = results.uniq
puts results.inspect