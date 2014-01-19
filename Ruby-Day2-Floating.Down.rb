# Seven languages in seven weeks
# Ruby Day 2

# Iterate Array and print batches of 4
array = (1..16).to_a()
array.each {|x| print "#{x} "; puts if x % 4 == 0}

# As above but modulus and index logic not required
puts array.each_slice(4) { |s| puts s.join(" ")}

# Update the Tree class to handle input of Hash
class Tree
  attr_accessor :children, :node_name, :level

    def initialize(hash, level=0)
      hash.each do |key,value|
        @node_name = "#{' '*level}#{key}"
        @children = value.map {|childk, childv| Tree.new({childk => childv}, level+1)}
        @level = level
      end
    end

	  def visit_all(&block)
	    visit &block
	    children.each {|c| c.visit_all &block}
	  end

	  def visit(&block)
      block.call self
	  end
	end

tree = Tree.new('grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } )

puts "Visiting a node:"
tree.visit {|node| puts node.node_name}
puts

puts "Visiting entire tree:"
tree.visit_all {|node| puts node.node_name}
puts

# Grep a file for a particular String
def grepper(fileName,expression)
  IO.foreach(fileName){|line| puts line if line =~ /#{expression}(.*)/}
end

grepper("testFile.txt","Ruby")


