module Statistics
  def orders
    self.orders
  end

  def top_reader(num = 1)
    counter(num, orders, :reader)
  end

  def most_popular_books(num = 1)
    counter(num, orders, :book)
  end

  def readers_the_most_popular_books(num = 3)
    books = most_popular_books(num)
    orders.select { |order| books.include? order.book }.map(&:reader).uniq.count
  end

  private

  def counter(num, orders, item)
    orders.group_by(&item).sort_by { |_key, value| -value.count }.first(num).to_h.keys
  end
end
