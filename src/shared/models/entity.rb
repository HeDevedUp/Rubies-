class Entity
  attr_reader :id

  def initialize(id)
    raise 'Abstract classes can\'t be instantiated.' if self.instance_of?(Entity)
    @id = id || Random.rand(1..10000)
  end

  def to_hash
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
