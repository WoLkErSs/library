require 'pry'
require_relative './autoload/autoload.rb'

library = Library.new
author = Author.new('Some one', 'Bio Bio')
book = Book.new('Games of Trones', author)
reader = Reader.new(name: 'LOlololo', email: '@lolo.com', city: 'Dnipro', street: 'Yavornickogo', house: 22)
order = Order.new(book, reader)

library.add(author)
library.add(order)
library.add(reader)
library.add(book)

library.take_most_popular_books(2)
library.take_top_readers(2)
library.take_readers_the_most_popular_books(2)
library.do_save_to_db
