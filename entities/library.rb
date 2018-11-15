class Library
  attr_reader :authors, :books, :orders, :readers

  include Statistics
  include Database
  include ErrorsCatcher

  def initialize
    @books = []
    @authors = []
    @orders = []
    @readers = []
    load_db
  end
end
