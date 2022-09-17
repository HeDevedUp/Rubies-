class Component
  def initialize(data)
    raise 'Abstract classes can\'t be instantiated.' if instance_of?(Component)

    @data = data
    @component_str = to_string
  end

  def to_string
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  def render
    puts gen_frames(@component_str.is_a?(String) ? [@component_str] : @component_str, 5)
  end
end
