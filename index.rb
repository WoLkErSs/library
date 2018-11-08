require 'yaml'
require_relative './controllers/author_controller.rb'
require_relative './controllers/book_controller.rb'
require_relative './controllers/reader_controller.rb'
require_relative './controllers/library_controller.rb'
require_relative './controllers/order_controller.rb'
require_relative './controllers/author_controller.rb'
require_relative './modules/statistic_module.rb'

library = Library.new
author = Author.new('Bulgakov', 'Bio Bio')
book = Book.new('Ded Moroz', author)
reader = Reader.new('VAAASYYAAA', '@lolo.com', 'Dnipro', 'Yavornickogo', 22)
order = Order.new(book, reader)

#library.input_to_db(reader)
#library.top_reader(2)
#library.most_popular_books(3)
#library.readers_the_most_popular_books(3)
library.input_to_db(order)
#library.input_to_db(book)
#library.input_to_db(author)
