require_relative '../modules/validation.rb'

class Book
  attr_accessor :title, :author
  include Validation

  def initialize(title, author)
    verification(title, author)
    @title = title
    @author = author.name
  end

  private

  def verification(title, author)
    chek_instetnce(author, Author)
    check_string(title)
  end
end
