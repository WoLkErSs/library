class Reader
  attr_reader :name, :email, :city, :street, :house
  include Validation

  def initialize(name, email, city, street, house)
    [name, email, city, street].map { |x| check_class(x, String) }
    check_class(house, Integer)

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
