module Validation
  include ErrorsCatcher

  private

  def check_instance(entity, klass)
    raise InstanceClassError unless entity.instance_of? klass
  end

  def check_string(entity)
    raise EmptyStringError if entity.empty?
  end

  def check_class(entity, klass)
    raise InputClassError unless entity.is_a? klass
  end
end
