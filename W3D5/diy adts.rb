class Stack

    attr_reader :arr

    def initialize
        @arr = []
    end

    def push(ele)
        @arr.push(ele)
    end

    def pop
        @arr.pop
    end

    def peek
        @arr[-1]
    end
end

class Queue
    attr_reader :arr

    def initialize
        @arr = []
    end

    def enqueue(ele)
        @arr.push(ele)
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr[0]
    end
end

class Map
    attr_reader :arr

    def initialize
        @arr = Hash.new{|h,k| h[k] = []}
    end

    def set(key, value)
        if !@arr.has_key?(key)
            @arr[key] = value
        end
    end

    def get(key)
        if @arr.has_key?(key)
            return key
        end
    end

    def delete(key)
        if @arr.has_key?(key)
            @arr.delete(key)
        end
    end

    def show
        @arr
    end
end