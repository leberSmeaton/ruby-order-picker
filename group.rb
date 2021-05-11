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
end