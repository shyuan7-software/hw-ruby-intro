# When done, submit this entire file to the autograder.

#Shaohua Yuan
#shyuan@tamu.edu
#UIN:629009213

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){|result,element| result+=element}
  # YOUR CODE COMPLETE
end

def max_2_sum arr
  # YOUR CODE HERE
  ans = Array[0,0]
  
  arr.each do |element| 
    if element>=ans[0] || arr.index(element)<2
      ans[1]=ans[0]
      ans[0]=element
    end
  end
  ans[0]+ans[1]
  # YOUR CODE COMPLETE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  
  arr.each do |element|
    if arr.include?(n-element) && arr.index(n-element)!=arr.index(element)
      return true
    end
  end
  return false
  # YOUR CODE COMPLETE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+name
  # YOUR CODE COMPLETE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  i=0
  while s.capitalize[i]<'A' ||s.capitalize[i]>'Z'
    i=i+1
    if i>=s.length
      return false
    end
  end
  
  if s.capitalize[i]=='A'||
    s.capitalize[i]=='E'||
    s.capitalize[i]=='I'||
    s.capitalize[i]=='O'||
    s.capitalize[i]=='U'
    return false
  else
    return true
  end
  # YOUR CODE COMPLETE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=='0'
    return true
  end
  if s =~ /^([0~1]*)00$/
    return true
  else
    return false
  end
  # YOUR CODE COMPLETE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(i,p)  
    if i=="" or p<=0
      raise ArgumentError
    end
    @isbn=i;#定义成员变量  
    @price=p  
  end  
  
  def price_as_string
    "$#{@price.round(2) ? format('%.2f', @price) : @price.round(2)}"
  end
  attr_accessor:isbn
  attr_accessor:price 
# YOUR CODE COMPLETE
end


