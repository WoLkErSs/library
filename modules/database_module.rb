module Database
  FOLDER_PATH = './database/'.freeze
  FILE_PATH = 'test'.freeze
  FORMAT_PATH = '.yml'.freeze
  PATH = FOLDER_PATH + FILE_PATH + FORMAT_PATH

  def load_db
    entities = [Book, Reader, Author, Order, Time]
    data = YAML.safe_load(File.open(PATH), entities, [], [], true)
    data.each { |i| i.each { |y| add(y) } }
  end

  def input_to_db(entity)
    add(entity)
    entities = [@books, @authors, @orders, @readers]
    File.open(PATH, 'w') { |f| f.write entities.to_yaml }
  end
end
