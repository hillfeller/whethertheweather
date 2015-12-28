class Testing
  attr_accessor :stuff

  def self.hello
    "Hello"
  end

  def self.stuff=(word)
    @stuff = word
  end

  def self.stuff
    @stuff
  end
end
