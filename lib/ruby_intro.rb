# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  partial_sum = 0
  arr.each do |x|
    partial_sum += x
  end
  
  return partial_sum
  
end

def max_2_sum arr
    size = arr.size
    
    return 0 if size == 0
    
    return arr[0] if size == 1
      
    max1 = arr.max
    arr.delete(arr.index(arr.max))
    max2 = arr.max
    
    return max1 + max2
end

def sum_to_n? arr, n
  
   return true if arr.size == 0 && n == 0
  
  return false if arr.size < 2
  i= 0
  
  while i < arr.size  do
    j= 0
    while j < arr.size do
      
      if i != j
        return true if(arr[i] + arr[j]) == n
      end
      
      j += 1
    end
     i += 1
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  
  return false if s == ""
 
  
  s.capitalize!
  return false if (s !~ /^[A-Z]/) == true
  s = /^[AEIOU]/.match(s)
  
  return s == nil
  
end

def binary_multiple_of_4? s
  
  # First we check for an empty string
  return false if s == ""
  
  # Now we check if the string contains anything that is not a 1 or 0
  return false if !(s !~ /[^01]/)
  
  # Check for cases when the number has less than 3 bits
  return true if s == "0"
  return true if s == "00"
  return false if s.size < 3
  
  # Finally, if a binary number is multiple of 4 then the two LSB should be 0
  return true if (s[-1] == "0") && (s[-2] == "0")
  return false
  
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    
    if isbn == '' || price <= 0
      raise ArgumentError
    end
    
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    
    return "$" + sprintf('%.2f', @price)
  
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
end
