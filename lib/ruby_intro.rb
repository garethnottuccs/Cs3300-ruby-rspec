# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  
  if arr.length() == 1
    return arr[0]
  end

  highest = arr[0]
  secondhighest = arr[1]
  arr[2..-1].each do |n|
    if n > highest
      secondhighest = highest
      highest = n
    elsif n > secondhighest
      secondhighest = n
    end
  end
  highest + secondhighest
end

def sum_to_n? arr, n
  if !arr.empty? && !(arr.length == 1) # Tests to ensure arr has at least two elements. 
    if arr.combination(2).any? {|a, b| a + b == n} # Uses combination method, getting every possible combination of 2 integers from array. 
      return true # If any combination equals n, return true.
    end
  end
  return false # If initial statement fails, returns false. 
end

# Part 2

def hello(name)
  hello = "Hello, "
  hello + name
end

def starts_with_consonant? s
  if s.empty? # Ensures string is not empty
    return false
  end

  if !s.match(/^[[:alpha:]]$/) # Ensures string starts with letter
    return false
  elsif s.start_with?('a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U') # If starts with vowel, return false
    return false
  else # If all of above pass, return true. 
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price) # Constructor
    raise ArgumentError if isbn.empty? # Ensure isbn is not empty. If it is, raise ArgumentError
    raise ArgumentError if price <= 0 # Ensure price > 0. If not, raise ArgumentError. 
    @isbn = isbn
    @price = price
  end

  def isbn # isbn getter
    @isbn
  end

  def price # price getter
    @price
  end

  def isbn=(isbn) # isbn setter
    @isbn = isbn
  end

  def price=(price) # price setter
    @price = price
  end

  def price_as_string # Return price as formatted string
    "$%0.2f" % [@price]
  end
end
