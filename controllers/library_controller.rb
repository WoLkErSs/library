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

  def add(entity)
    case entity
    when Book then @books << entity
    when Author then @authors << entity
    when Reader then @readers << entity
    when Order then @orders << entity
    else
      raise InstanceClassError
    end
  end
end
