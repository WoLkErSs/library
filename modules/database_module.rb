module Database
  PATH = './database/test.yml'.freeze

  def load_db
    entities = [Book, Reader, Author, Order, Time]
    data = YAML.safe_load(File.open(PATH), entities, [], [], true)
    data.each { |i| i.each { |y| router(y) } }
  end

  def input_to_db(entity)
    router(entity)
    entities = [@books, @authors, @orders, @readers]
    File.open(PATH, 'w') { |f| f.write entities.to_yaml }
  end
end
