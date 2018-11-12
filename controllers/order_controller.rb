class Order
  attr_reader :book, :reader, :date
  include Validation

  def initialize(book, reader, date = Time.now)
    verification(book, reader)
    @book = book.title
    @reader = reader.name
    @date = date
  end

  def verification(book, reader)
    check_instance(book, Book)
    check_instance(reader, Reader)
  end
end
