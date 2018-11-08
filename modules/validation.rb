module Validation
  private

  def chek_instetnce(enty, klass)
    raise puts 'EntyError' unless enty.instance_of? klass
  end

  def check_string(title)
    raise puts 'EmptyString' if title.empty?
  end

  def check_class(enty, klass)
    raise puts 'ClassError' unless enty.is_a? klass
  end
end
