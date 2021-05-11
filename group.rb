# do this simplicist thing to get it to pass first test

class Group
    attr_reader :name, :names_array # is a method and takes a symbol

    def initialize(group_name) # overriding the default initialize with a positional arguement group name
        @name = group_name # setting instance variable @name
        @names_array = []
    end
end