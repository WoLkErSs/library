module Statistics
  def top_reader(orders, num = 1)
    counter(num, orders, :reader)
  end

  def most_popular_books(orders, num = 1)
    counter(num, orders, :book)
  end

  def readers_the_most_popular_books(orders, num = 3)
    books = most_popular_books(orders, num)
    orders.select { |order| books.include? order.book }.map(&:reader).uniq.count
  end

  private

  def counter(num, orders, item)
    puts orders.group_by(&item).sort_by { |_key, value| -value.count }.first(num).to_h.keys
  end
end
