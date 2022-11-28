class Stack
    def initialize
        @stack = Array.new
    end

    def push(el)
        self << el
    end

    def pop
        n = self[-1]
        self = self[0...-1]
        n
    end

    def peek
        return self[0]
    end
end

class Queue
    def initialize
        
    end

    def enqueue(el)
        
    end

    def dequeue

    end

    def peek

    end
end

class Map
    def set(key,value)
    end

    def get(key)
    end

    def delete(key)
    end

    def show
    end
end