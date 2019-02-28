a = {delhi: 5, bombay: 10, punjab: 20}

b = [15,10,25]
# delhi add 15
# bombay add 10
#  punjab add 25

a[:delhi] += b[0]

puts a.inspect