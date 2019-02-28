######## read all the data from script phone_record.txt and give some of total seconds for a particular number ###########
def calculate_call_record(record_num)
  call_sec=0
  pos = 0
  record_num.each do |b|
    case pos
    when 0
      call_sec+= b.to_i*3600
    when 1
      call_sec+= b.to_i*60
    when 2
      call_sec+= b.to_i
    end
    pos+=1 
  end
  return call_sec
end


  # record_num.each_with_index do |n, index|
  #   case index
  #   when 0
  #     b+= n.to_i*3600
  #   when 1
  #     b+= n.to_i*60
  #   when 2
  #     b+= n.to_i
  #   end
  # end
  

puts "Enter your number: "
number = gets
num = number.chomp
puts num.inspect
results = []
total_num = 0
IO.foreach("phone_record.txt") do |line| 
  record = line.split(" ")
  record_num = record[1].split(":")
  total_num+= calculate_call_record(record_num) if record[0].eql?(num)
end
puts total_num


