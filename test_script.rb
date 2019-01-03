#!/usr/bin/ruby
########################################################################
##### example how a script works

# comm = <<EOF
# ls -lrt
# EOF
# system(comm)

##### Inside script you can create any number of classes and use them
class A
  def m
    puts 10
  end
end

a = A.new
# a.m



######################################################################
## Understanding Exception handling
#===================================================================

## can be applied on a method (whole block of statements)
def m1(x,y)
  puts x
  puts y 
  puts x + y
  puts x*y
  rescue StandardError => e
    puts "Call with integer arguments"
end

# m1('10', 20)     #####   to create exception

## can be applied on a method (selective block of statements)

def m2(x,y)
  puts x
  puts y 
  begin
    puts x + y
    puts x*y
  rescue StandardError => e
    puts "Call with integer arguments"
  end  
end

#========================================================
## can be defined on statements anywhere
# begin 
#   x= 10
#   y='20'
#   puts x+y
# rescue
#   puts "something went wrong"
# end


#### Raising exceptions by being pro-active 

def m3(x,y)
  raise 'Please provide integer arguments' unless (x.class != Integer && y.class != Integer)
  puts x * y
  puts x + y
  rescue StandardError => e
    puts e  
end

# m3(10,'20')   #####   to create exception