class Vehicle
  attr_accessor :name, :age, :city

  def self.method1
    puts "hi...this is a class method" ### Vehicle.method1
  end

  def method2
    puts "hi....this is instance method" ### if obj = Vehicle.new then obj.method2
    method4
  end

  ####################################################################################
  ## Understanding arguments
  ####################################################################################

  ## simple arguments [position based]

  def method_2_1(arg1, arg2)
    puts arg1 + ' ' + arg2
  end

  def method_2(arg1='new', arg2='test')
    puts arg1 + ' ' + arg2
  end
  
  ## unlimited arguments

  def method_3(*args)
    puts args.inspect
  end
  
  ## keywords arguments

  def method_1(arg1: 'test', arg2: 'test1')
    puts arg1 + ' ' + arg2
  end




  ####################################################################################


  public

  def method3                       ###### obj.method3
    puts "method3 is being called."
    self.method4 # protected method can be called with objects of its class.
    method5 # private method can not be called with objects of its class but both private and protected methods must be called with a public method.
  end

  protected

  def method4
    puts "method4 is being called." ### must be called with a public method like obj.method3
  end

  private

  def method5
    puts "method5 is being called" ### 
  end 

end


#### Note - private and protected method both can be called with a public method like obj.method3 but protected method can be called with self and without self like method4 and self.method4.  Private method can only be called without self like method5.
#### if we need to call private and protected method directly without using public method then obj.send(:method5) and obj.send(:method4) will work.

