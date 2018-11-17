module Database
  FOLDER_PATH = './database/'.freeze
  FILE_PATH = 'test'.freeze
  FORMAT_PATH = '.yml'.freeze
  PATH = FOLDER_PATH + FILE_PATH + FORMAT_PATH

  def save_to_db(orders:, readers:, books:, authors:)
    entities = [orders, readers, books, authors]
    File.open(PATH, 'w') { |f| f.write entities.to_yaml }
  end

  private

  def load_db
    white_list_entities = [Book, Reader, Author, Order, Time]
    YAML.safe_load(File.open(PATH), white_list_entities, [], [], true)
  end
end
