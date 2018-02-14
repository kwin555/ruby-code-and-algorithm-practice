class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)

  end

  def pop
    return 'stack is empty' if @data.nil?
    node_value = @data.value
    @data = @data.next_node
    node_value
  end
end

def reversed_list(list)


  while list

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
stack1 = Stack.new
stack1.push(4)
stack1.push(5)
stack1.push(1)
puts stack1.inspect
