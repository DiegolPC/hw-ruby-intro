# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero.
  return 0 if arr.empty?
  suma=0
  arr.each do |x|
    suma+=x
  end
  return suma
end

def max_2_sum arr
  # Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements.
  # For an empty array it should return zero. For an array with just one element, it should return that element.
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort! {|x, y| y<=>x} 
  sum = arr[0]+arr[1]
  return sum
end

def sum_to_n? arr, n
  # Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments 
  # and returns true if any two elements in the array of integers sum to n.
  # An empty array should sum to zero by definition.
  return false if arr.empty?
  return false if arr.length==1
  arr.each do |x|
    if x == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
  return "Hello, " + name
end

def starts_with_consonant? s
  # Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise. 
  # (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
  # NOTE: be sure it works for both upper and lower case and for nonletters!
  return false if s.empty?
  s.capitalize!
  s.split(//)
  if (s[0]<'65' || s[0]=='A' || s[0]=='E' || s[0]=='I' || s[0]=='O' || s[0]=='U' )
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4. 
  # NOTE: be sure it returns false if the string is not a valid binary number!

  bin=s.to_i(2)
  return false if bin==0  #0 and 2 is not multiple of 4  0/4=0 and the remainder is 4 
  return bin%4==0 ? true : false
end

# Part 3

class BookInStock
# Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes.
# The constructor should accept the ISBN number (a string, since in real life ISBN numbers can begin with zero and can include hyphens) as the first 
# argument and price as second argument, and should raise ArgumentError (one of Ruby's built-in exception types) if the ISBN number is the empty string 
# or if the price is less than or equal to zero. Include the proper getters and setters for these attributes.
# Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places, that is, a price of 20
# should format as "$20.00" and a price of 33.8 should format as "$33.80".
  attr_accessor :isbn
  attr_accessor :price  #Hace al atributo price y isbn leíble y escribible
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price 
    if @isbn.empty?
      raise ArgumentError.new("Incorrect ISBN")
    end
    if @price <= 0
      raise ArgumentError.new("Price not valid")
    end
  end
  
  def price_as_string
    pri=@price.round(2)
    pr="$" + "#{'%.02f' % pri.to_s}"
    pr
  end
end
