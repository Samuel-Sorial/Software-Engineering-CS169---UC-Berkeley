=begin
    Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number,
    price, as attributes. Run associated tests via: $ rspec -e 'getters and setters' spec/part3_spec.rb
    The constructor should accept the ISBN number (a string, since in real life ISBN numbers can begin with zero and can include hyphens)
    as the first argument and price as second argument, and should raise ArgumentError (one of Ruby’s built-in exception types) if the ISBN
    number is the empty string or if the price is less than or equal to zero. Include the proper getters and setters for these attributes.
    Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places,
    that is, a price of 20 should format as $20.00 and a price of 33.8 should format as $33.80
=end

class BookInStock
  attr_accessor :price
  attr_accessor :isbn
  def initialize(isbn, price)
    raise ArgumentError.new('ISBN can not be an empty string') if isbn.empty?
    if price <= 0
      raise ArgumentError.new('Price can not be zero or less than zero')
    end
    @price = price
    @isbn = isbn
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
