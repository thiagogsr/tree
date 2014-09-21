class Tree

  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert value
    new_branch = Branch.new value

    if @root.nil?
      @root = new_branch
    else
      position = search value
      new_branch.parent = position

      if value < position.value
        position.left = new_branch
      else
        if value > position.value
          position.right = new_branch
        end
      end
    end
    
    new_branch
  end

  def remove branch
    if branch.right.nil? && branch.left.nil?
      branch = nil
      return
    end

    if branch.right.nil? && !branch.left.nil?
      branch.parent.left = branch.left
      return
    end

    if !branch.right.nil? && branch.left.nil?
      branch.parent.right = branch.right
      return
    end

    successor = branch.right
    controller = true
    while controller
      if successor.left.nil?
        controller = false
      else
        successor = successor.left
      end
    end

    successor.parent.left = nil
    successor.parent = branch.parent
    successor.left = branch.left
    successor.right = branch.right

    if branch.value < branch.parent.value
      branch.parent.left = successor
    end

    if branch.value > branch.parent.value
      branch.parent.right = successor
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

    def search value
      current = @root
      position = nil
      while not current.nil?
        position = current
        if value < current.value
          current = current.left
        else
          if value > current.value
            current = current.right
          end
        end
      end
      position
    end

end