require 'set'

class GraphNode
    attr_accessor :value, :neighbors

    def initialize
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end
end

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
        node = queue.shift
        if !visited.include?(node)
            return node.value if node.value == target_value
            visited.add(node)
            queue += node.neighbors
        end
    end
    return nil
end