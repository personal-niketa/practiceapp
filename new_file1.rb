class NewFile1 < NewFile
  
  def test_method
    puts "this method is being called from overriden method."
  end
 
  def test_metho2(*ar)
    case ar.size
    when 0
      test_method1
    when 1
      puts "1"
    else
      puts "10"
    end
  end


end