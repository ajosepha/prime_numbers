class PrimeNumber

  def get_data(len)
    [].tap do |array|
      i = 2
      while array.length < len
        if is_prime(i)
          array.push(i)
        end
        i += 1
      end
    end
  end

  def is_prime(num)
    if num == 1 
      return false
    elsif num == 2 || num == 3
      return true
    elsif num % 2 == 0 || num % 3 == 0
      return false
    else
      i = 5
      while i < Math.sqrt(num + 1).ceil 
        return false if num % i == 0
        i += 2
      end
    end
    return true
  end

end




