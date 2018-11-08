require 'yaml'
require_relative '../modules/database_module.rb'
require_relative '../modules/statistic_module.rb'

class Library
  attr_accessor :authors, :books, :orders, :readers
  include Database
  include Statistics

  def initialize
    @books = []
    @authors = []
    @orders = []
    @readers = []
    load_db
  end

  def router(entity)
    if entity.instance_of? Book
      @books << entity
    elsif entity.instance_of? Author
      @authors << entity
    elsif entity.instance_of? Reader
      @readers << entity
    elsif entity.instance_of? Order
      @orders << entity
    else 'Error entity'
    end
  end
end
