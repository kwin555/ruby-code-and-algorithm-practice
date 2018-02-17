class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    nil if @data.nil?
    puts data.value
    @data = @data.next_node
  end
end

def reversed_list(list, previous_node = nil)
  if list
    next_node = list.next_node
    list.next_node = previous_node
    reversed_list(next_node, list)
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
print_values(node3)
reversed_list(node3)
print_values(node1)
