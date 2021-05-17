# do this simplicist thing to get it to pass first test
# def method
# end

class Group
    attr_reader :name, :names_array # is a method and takes a symbol

    def initialize(group_name, file_path) # overriding the default initialize with a positional arguement group name
        @name = group_name # setting instance variable @name
        @path = file_path
        @names_array = self.path_to_array
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

    def path_to_array
        begin
            array = File.readlines(get_file_path).map {|name| name.strip}
        rescue #do something with your rescure
            puts "Invalid path, creating file"
            File.open(get_file_path, "w") do |file| 
                file.write("")
            end
            array = [] 
        end
        return array
    end

    def save
        File.open(@path, "w+") do |file|
            file.puts(@names_array)
        end
    end

    private #private method no one can see
    def get_file_path
        @path
    end

end

# testing if this works
# example = Group.new("Example")
# example.output_random_array

# Another way of input output
# test_group = Group.new("Test Group", './groups/test-group.txt')
# # test_group = Group.new("Test Group", './groups/test-group.txt')
# test_group.output_random_array

## manual test to add names into a group
# test_group = Group.new("test group", "./groups/test-group.txt")
# test_group.add_name("Bob Smith")
# test_group.save