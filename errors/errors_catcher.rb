module ErrorsCatcher
  class InstanceClassError < StandardError
    def initialize
      super('Wrong instance of class!!!')
    end
  end

  class EmptyStringError < StandardError
    def initialize
      super('You inputed empty string!!!')
    end
  end

  class InputClassError < StandardError
    def initialize
      super('Wrong type of input!!!')
    end
  end
end
