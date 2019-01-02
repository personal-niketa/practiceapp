class TestFile1 < TestFile
  attr_accessor :attr1, :attr2
  ################################################################################
   ## Constructor -  These are the methods that are being automatically called when a object is initialized. In ruby, it can be declared using initialize keyword:
  def initialize
    self.attr1 = 'OK'
    puts "this is Constructor method which will be automatically called whenever object is invoked"
    puts self.inspect
  end

  ################################################################################

  def test_method1
    puts "hi this in test method1"
  end
  ##################################################################
  ## Example of Method Overriding
  def test_method2
    puts "This message is coming from overriden test_method2"
  end
  
  ## You can access the parent's method by using 'super' keyword if your class overrides a method from parent class
  def test_method3
    super
    puts "This message is coming from overriden test_method3"
  end
  ###################################################################

  ## Example of Inheritance 
  ## obj = TestFile1.new
  ## obj.test_method

  ###################################################################
  # Method overloading is not supported in ruby


  ###################################################################
  ## Singleton/Eigen Method or class

  ## These are the methods defined for only a single object.

  ## obj = TestFile1.new
  ## def obj.size
  ##    puts "1"
  ## end
  ## obj.size ===> will return 1

  ## obj1 = TestFile1.new
  ## obj1.size ===> undefined

  ## Singleton Class  -- When one declares a singleton method on an object, Ruby automatically creates a class to hold just the singleton methods.

  #####################################################################

 

end