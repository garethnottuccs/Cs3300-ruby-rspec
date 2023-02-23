# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  highest = 0
  secondhighest = 0
  arr.each do |n|
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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  hello = "Hello, "
  hello + name
end

def starts_with_consonant? s
  first = s[0]
  if first = 'A' || first = 'a' || first = 'E' || first = 'e' || first = 'I' || first = 'i' || first = 'O' || first = 'o' || first = 'U' || first = 'u'
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
