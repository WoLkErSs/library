require_relative '../modules/validation.rb'

class Reader
  attr_accessor :name, :email, :city, :street, :house
  include Validation

  def initialize(name, email, city, street, house)
    about = [name, email, city, street]
    about = about.map { |x| check_class(x, String) }
    return unless (house.is_a? Integer) && about

    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
