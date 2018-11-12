class Book
  attr_reader :title, :author
  include Validation

  def initialize(title, author)
    verification(title, author)
    @title = title
    @author = author.name
  end

  private

  def verification(title, author)
    check_instance(author, Author)
    check_string(title)
  end
end
