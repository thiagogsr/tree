class Tree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert value, branch, side
    @root = branch if @root.nil?

    new_branch = Branch.new value
    new_branch.parent = branch

    case side
    when 'right'
      branch.right = new_branch
    when 'left'
      branch.left = new_branch
    end
    new_branch
  end

  def remove branch, side
    case side
    when 'right'
      branch.right = nil
    when 'left'
      branch.left = nil
    end
  end

  def all
    visit @root
  end

  private
    def visit branch
      unless branch.nil?
        visit branch.left
        puts branch.value
        visit branch.right
      end
    end

end