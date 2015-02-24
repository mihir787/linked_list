class Node
  attr_reader :data
  attr_accessor :link

  def initialize(data)
    @data = data
    @link = nil
  end
end

class IterativeLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def assign_head_node(node)
    @head = node
  end

  def append(node)
    cur_node = @head
    until cur_node.link == nil
      cur_node = cur_node.link
    end
    cur_node.link = node
  end

  def count
    count = 1
    cur_node = @head
    until cur_node.link == nil
      cur_node = cur_node.link
      count += 1
    end
    count
  end

  def access_tail
    cur_node = @head
    until cur_node.link == nil
      cur_node = cur_node.link
    end
    cur_node.data
  end

  def pop
    cur_node = @head
    prev_node = nil
    until cur_node.link == nil
      prev_node = cur_node
      cur_node = cur_node.link
    end
    prev_node.link = nil
  end

  def access(n)
    node = @head
    if n > 0
      i = 0
      until i == n
        node = node.link
        i += 1
      end
    end
    node.data
  end
end

class RecursiveLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def assign_head_node(node)
    @head = node
  end

  def append(node, current_node = @head )
    if current_node.link == nil
      current_node.link = node
    else
      append(node, current_node.link)
    end
  end

  def tail_node(current_node = @head)
    if current_node.link == nil
      current_node.data
    else
      tail_node(current_node.link)
    end
  end

  def count(current_node = @head, count = 0)
    count += 1
    if current_node.link == nil
      count
    else
      count(current_node.link, count)
    end
  end

  def pop(previous_node = nil, current_node = @head)
    if current_node.link == nil
      previous_node.link = nil
    else
      pop(current_node, current_node.link)
    end
  end

  def access(n, current_node = @head, current_index = 0)
    if current_index == n
      current_node.data
    else
      access(n, current_node.link, current_index + 1)
    end
  end

end
