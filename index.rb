# https://github.com/CoderAcademy-ALL/ruby-order-picker


require_relative("methods")
require_relative("group")
# require_relative("command_line_args") #commandline arguments
# require("colorize")

# group = ["Alice", "Bob", "Charlie"]
# group = ["Alice"]
# group = %w[]

if ARGV.length > 0 
    flag, *rest = ARGV
    ARGV.clear
    # clear out arguments
    case flag
    when '-help'
        puts "See further documentation in readme"
        exit
    when '-info'
        puts "This program is using Ruby version: #{RUBY_VERSION}"
        exit
    when '-path'
        group_instance = Group.new(rest[1] ||= "Default Group", rest[0])
    else
        puts 'Invalid argument, see readme for options'
        exit
    end
    # pp flag #hello
    # pp rest #from command line
end

group_instance ||= Group.new("Melbourne FlexTrack", "./groups/melb-fx1.txt") #instance of melb flex track class
#if you've already set variable its going to ignore everything after || or

while true
    output_group_size(group_instance.names_array.length) 
    # or
    # group_size = group_instance.names_array.length
    # output_group_size(group_size)
    case menu_input_select # menu method

    when 1
        # add_member_to_group(group) #connecting to methods
        # bringing in group array to give method access
        puts "Enter name to add"
        name_input = gets.chomp
        group_instance.add_name(name_input)
        puts "Added #{name_input} to group"
        
    when 2
        puts "Random group output: "
        random_order_loop_running = true
        while random_order_loop_running
            group_instance.output_random_array
            #output_random_group_order(group) #passing the array into the method
             # has potential to mutate so be careful        
            puts "Press 1 to go back"
            puts "Press 2 to quit"
            puts "Press any other key to regerate order of random group"
            choice = gets.chomp.to_i
            if choice == 1
                random_order_loop_running = false
            elsif choice == 2
                quit_program
            else
                wait_clear(1)
            end
        end
    when 3
        puts "The random user is #{group_instance.names_array.sample.capitalize}"
    when 4
        # To do - check they want to quit
        quit_program(group_instance)
    else 
        puts "Invalid input please try again"
    end
    wait_clear(2)
end

