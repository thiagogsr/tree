class Tree

  def initialize
    @root = nil
  end

  def insert value, branch = nil, side = nil
    new_branch = Branch.new value

    if @root.nil?
      @root = new_branch
    else
      new_branch.parent = branch
      branch.children[side] = new_branch
    end

    new_branch
  end

  def get branch, side
    branch.children[side].value rescue 'nenhum valor neste lado'
  end

end