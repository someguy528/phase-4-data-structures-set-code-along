# your code here
class MySet
    # attr_reader :hash
    # macro makes the hash accessible to '.keys' method in final prints method
    # can also replace instance variable '@hash' with just 'hash'

    # default argument is set to empty array if no argument set
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*values)
        new(values)
    end

    def clear 
        @hash.clear
        self
    end
    
    # ampersand turns proc into code block and code block into proc and activates 'to_proc' on anything else
    # code block argument is what code performs on each key in the hash through 'each' enumerable method
    def each(&block)
        @hash.keys.each(&block)
        self
    end

    def inspect
        @hash.keys.each{|i| p i}
        "#<#{self.class.name}: {#{@hash.keys.join(', ')}}>"
    end



end