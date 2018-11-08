require 'date'
require_relative '../modules/validation.rb'

class Order
  attr_accessor :book, :reader, :date
  include Validation

  def initialize(book, reader, date = Time.now)
    verification(book, reader)
    @book = book.title
    @reader = reader.name
    @date = date
  end

  def verification(book, reader)
    chek_instetnce(book, Book)
    chek_instetnce(reader, Reader)
  end

end
