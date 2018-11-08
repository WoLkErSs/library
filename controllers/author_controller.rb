require_relative '../modules/validation.rb'

class Author
  attr_accessor :name, :biography
  include Validation

  def initialize(name, biography = '')
    verification(name)
    @name = name
    @biography = biography
  end

  private

  def verification(name)
    check_class(name, String)
    check_string(name)
  end
end
