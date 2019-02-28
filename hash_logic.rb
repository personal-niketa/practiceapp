results = {}
IO.foreach("test_file1.txt") do |line| 
  record = line.split(" ")
  results[record[0]] = 0 unless results.key?(record[0])
  results[record[0]] += record[1].to_i
end
puts results.inspect

