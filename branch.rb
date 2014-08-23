class Branch

  attr_accessor :value, :parent, :children

  def initialize value
    @value    = value
    @parent   = nil
    @children = {'left' => nil, 'right' => nil, 'center' => nil}
  end

  def parent= new_parent
    @parent = new_parent
  end

end