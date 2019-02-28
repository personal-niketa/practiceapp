results = {}
IO.foreach("test_file.txt") do |line| 
  record = line.split(" ")
  results[record[0]] = [] unless results.key?(record[0])
  results[record[0]] << record[1]
end
results['DelhiCount'] = results['Delhi'].size
results['NoidaCount'] = results['Noida'].size
results['GurgaonCount'] = results['Gurgaon'].size
puts results.inspect

