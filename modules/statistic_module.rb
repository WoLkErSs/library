module Statistics
  def top_reader(orders, num = 1)
    orders.group_by(&:reader).sort_by { |_key, value| -value.count }.first(num).to_h.keys
  end

  def most_popular_books(orders, num = 1)
    orders.group_by(&:book).sort_by { |_key, value| -value.count }.first(num).to_h.keys
  end

  def readers_the_most_popular_books(orders, num = 3)
    orders.select { |order| most_popular_books(orders, num).include? order.book }.map(&:reader).uniq.count
  end
end
