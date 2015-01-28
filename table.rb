require './prime.rb'

class Table

  def initialize(data_object)
    @data_object = data_object
  end

  def format_num(num)
    if num.to_s.length == 1
       " #{num}    "
    elsif num.to_s.length ==2
     " #{num}   "
    elsif num.to_s.length > 2
       " #{num}  "
    end
  end

  def create_table(len)
    x = @data_object.get_data(len)
    y = @data_object.get_data(len)
    print "       "
    x.each do |i|
      print "#{i}  | "  
    end
    puts " "
    y.each do |i|
      print format_num(i)  
      x.each do |f|
        print format_num(f * i)
      end
      puts ""
    end
  end
end

@data_object = PrimeNumber.new
b = Table.new(@data_object)
b.create_table(10)


