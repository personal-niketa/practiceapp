a = {num1: 20, num2: 31, num3: 40, num4: 55, num5: 60, num6: 79}
a.each do |k,v|
  if v%2 == 0
    a[k] += 10
  else
    a[k] +=20
  end  
end
puts a.inspect