class Branch

  attr_accessor :value, :parent, :right, :left

  def initialize value
    @value  = value
    @parent = nil
    @right  = nil
    @left   = nil
  end

  def parent= new_parent
    @parent = new_parent
  end

  def right= new_branch
    @right = new_branch
  end

  def left= new_branch
    @left = new_branch
  end

end