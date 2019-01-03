class NewFile
  TEST_CONSTANT = 10
  attr_accessor :test_attribute

  def initialize(arg1=10)
    self.test_attribute = arg1
  end 

  def test_method
    puts "this is being called from main class"
    self.method2
    method3
  end

  def test_method1
    puts "parent class method"
  end

  def self.method1
    puts "class method"
  end

  def method4(ar1, ar2)
    puts ar1 + ar2
  end

  def method5(ar1='nik', ar2='sharma')
    puts ar1 + ' ' + ar2
  end

  protected 

  def method2
    puts "protected method"
  end

  private

  def method3
    puts "private method"
  end

end