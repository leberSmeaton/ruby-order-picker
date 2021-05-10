require_relative("methods")

group = []
# group = ["Alice"]
while true
    output_group_size(group.length) # group is the array above on in program, length is the length of the array
    #returns the menu method from methods.rb
    case menu_input_select # menu method

    when 1
        add_member_to_group(group) #connecting to methods
        # bringing in group array to give method access
    when 2
        puts "Random group output: "
        random_order_loop_running = true
        while random_order_loop_running
            output_random_group_order(group) #passing the array into the method
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
        puts "The random user is #{group.sample.capitalize}"
    when 4
        # To do - check they want to quit
        quit_program
    else 
        puts "Invalid input please try again"
    end
    wait_clear(2)
end

