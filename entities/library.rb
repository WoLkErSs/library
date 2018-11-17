class Library
  attr_reader :authors, :books, :orders, :readers, :data

  include Statistics
  include Database
  include ErrorsCatcher

  def initialize
    @books = []
    @authors = []
    @orders = []
    @readers = []
    init
  end

  def add(entity)
    case entity
    when Book then @books << entity
    when Author then @authors << entity
    when Reader then @readers << entity
    when Order then @orders << entity
    else raise InstanceClassError
    end
  end

  def init
    load_db.flatten.each { |y| add(y) } unless load_db.is_a? NilClass
  end

  def take_most_popular_books(num = 1)
    most_popular_books(@orders, num)
  end

  def take_readers_the_most_popular_books(num = 3)
    readers_the_most_popular_books(@orders, num)
  end

  def take_top_readers(num = 1)
    top_readers(@orders, num)
  end

  def do_save_to_db
    save_to_db(books: @books, authors: @authors, orders: @orders, readers: @readers)
  end
end
