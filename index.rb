require_relative './autoload/autoload.rb'

library = Library.new
author = Author.new('Bulgakov', 'Bio Bio')
book = Book.new('Ded Moroz', author)
reader = Reader.new(name: 'LOlololo', email: '@lolo.com', city: 'Dnipro', street: 'Yavornickogo', house: 22)
order = Order.new(book, reader)

library.most_popular_books(library.orders, 2)
library.top_reader(library.orders, 2)
library.input_to_db(order)
library.readers_the_most_popular_books(library.orders, 2)
