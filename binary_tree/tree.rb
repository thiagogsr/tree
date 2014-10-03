class Tree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert value, branch = nil, side = nil
    new_branch = Branch.new value

    if @root.nil?
      @root = new_branch
    else
      new_branch.parent = branch

      case side
      when 'right'
        branch.right = new_branch
      when 'left'
        branch.left = new_branch
      end
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

  def get branch, side
    case side
    when 'right'
      branch.right.value rescue 'nenhum valor a direita'
    when 'left'
      branch.left.value rescue 'nenhum valor a esquerda'
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