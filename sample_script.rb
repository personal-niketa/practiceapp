arr = [ 'Arjun', 'Biswa', 'Anand', 'Mithoon', 'Debasish', 'Murali', 'Tanmay', 'Naman']
a = []
a = arr.select { |m| m.start_with?('A') }
# puts a.inspect

def arr_count
  arr = [ 'Arjun', 'Biswa', 'Anand', 'Mithoon', 'Debasish', 'Murali', 'Tanmay', 'Naman']
  ar = 0
  arr.each do |a|
    ar = ar +  a.length
  end
  # puts ar
end
### prepare separate arrays based on matching initial letter of every element.
arr_count


#--------------------



def arr_count(arr)
  arr_sum = 0
  arr.each do |a|
    arr_sum += a.length
  end
  return arr_sum
end

arr = [ 'Arjun', 'Biswa', 'Anand', 'Mithoon', 'Debasish', 'Murali', 'Tanmay', 'Naman']
# puts arr_count(arr)


def even_odd(num_array)  
  s = 0
  f = 0
  a = num_array.select { |m| m % 2 == 0 }
  b = num_array.select { |m| m % 2 != 0 }
  a.each do |n|
    s = s + n
  end
  b.each do |n|
    f = f + n
  end
  return "Sum of Even numbers are: #{s}"  + " Sum of Odd numbers are: #{f}"
end
array = [1,2,3,4,5,6,7,8,19,10,78,90]
# puts even_odd(array)

def max_number(a)
  max = 0
  a.each do |n|
    if n > max
      max = n
    end  
  end
  return max
end

a = [1,2,3,4,5,6,7,8,9,10,34,89,123,56,22,67,107,342]
# puts max_number(a)

def non_repeated_num
  array = [1, 2, 1, 3, 5, 4, 5, 5]
  results = []
  array.each do |i|
    results << i if array.count(i) == 1
  end
  return results
end

# puts non_repeated_num.inspect

def non_duplicated_num(array) 
  non_rep = []  
  array.each do |i|
    count = 0  
    array.each do |n|
      count += 1 if n == i
    end
      non_rep << i if count == 1
  end
  return non_rep
end
array = [1, 2, 1, 3, 5, 4, 5, 5]
# puts non_duplicated_num(array)

def word_count(str)
  s = 0
  a = str.split(" ")
  a.each do |w|
    s += w.length
  end
  return "Sum of characters is #{s} and Total number of words in this string are #{a.size}"
end
str = "hi niketa how are you ?"
# puts word_count(str)


def line_count(s)
  i = 0
  a = s.split("\n")
  a.each do |n|
    i = i + n.length
  end
  return "Number of lines in string are #{a.count} and sum of words of string are #{i}"
end

r_str = "AAA
AAA
AAA
AAA
AAA
AAA
AAA
AAA
"
puts line_count(r_str)