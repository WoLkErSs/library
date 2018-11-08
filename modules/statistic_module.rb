module Statistics
  def counter(arr)
    n = Hash.new(0)
    arr.each { |e| n[e] += 1 }
    n = n.sort_by { |_k, v| v }.reverse.to_h
  end

  def top_reader(num = 1)
    orders_names = []
    @orders.each { |name| orders_names << name.reader }
    n = counter(orders_names)
    puts n.keys.first(num)
  end

  def most_popular_books(num = 1)
    orders_books = []
    @orders.each { |t| orders_books << t.book }
    n = counter(orders_books)
    puts n.keys.first(num)
  end

  def readers_the_most_popular_books(num = 3)
    orders_books = []
    @orders.each { |t| orders_books << t.book }
    n = counter(orders_books)
    books = n.keys[0...num]
    readers = []
    @orders.each { |i| readers << i.reader if books.include? i.book }
    puts readers.uniq.count
  end
end
