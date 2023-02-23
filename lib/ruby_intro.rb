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
  if !arr.empty? && !(arr.length == 1)
    if arr.combination(2).any? {|a, b| a + b == n}
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  hello = "Hello, "
  hello + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end

  if !s.match(/^[[:alpha:]]$/)
    return false
  elsif s.start_with?('a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U')
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(initialisbn, initialprice)
    @isbn = initialisbn
    @price = initialprice
  end
  def price_as_string
    string_price = "$%0.2f" % [price]
  end
end
