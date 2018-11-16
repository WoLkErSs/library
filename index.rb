require 'pry'
require_relative './autoload/autoload.rb'

library = Library.new
author = Author.new('Some one', 'Bio Bio')
book = Book.new('Games of Trones', author)
reader = Reader.new(name: 'LOlololo', email: '@lolo.com', city: 'Dnipro', street: 'Yavornickogo', house: 22)
order = Order.new(book, reader)

library.top_reader(2)
library.most_popular_books(2)
library.readers_the_most_popular_books(stata, 2)
library.input_to_db(order)
