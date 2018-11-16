module Database
  FOLDER_PATH = './database/'.freeze
  FILE_PATH = 'test'.freeze
  FORMAT_PATH = '.yml'.freeze
  PATH = FOLDER_PATH + FILE_PATH + FORMAT_PATH

  def input_to_db(entity)
    entities = add(entity)
    File.open(PATH, 'w') { |f| f.write entities.to_yaml }
  end

  private

  def load_db
    entities = [Book, Reader, Author, Order, Time]
    YAML.safe_load(File.open(PATH), entities, [], [], true)
  end
end
