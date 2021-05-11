# do this simplicist thing to get it to pass first test
# def method
# end

class Group
    attr_reader :name, :names_array # is a method and takes a symbol

    def initialize(group_name) # overriding the default initialize with a positional arguement group name
        @name = group_name # setting instance variable @name
        @names_array = ["Alice", "Bob", "Charlie", "Dylan"]
    end

    def randomise_order
        return @names_array.shuffle
    end

    def output_random_array
        randomise_order.each do |name|
            puts name
        end
    end

    def add_name(name)
        @names_array.push(name)
    end
end

# testing if this works
# example = Group.new("Example")
# example.output_random_array