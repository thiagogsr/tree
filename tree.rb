class Tree

  def initialize
    @root = nil
  end

  def insert value, branch, side
    @root = branch if @root.nil?

    new_branch = Branch.new value
    new_branch.parent = branch

    branch.children[side] = new_branch
    new_branch
  end

  def next branch, side
    branch.children[side]
  end

end