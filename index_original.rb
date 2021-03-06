# create empty array
# build menu system
# choices 1, 2, 3.
# case statement + while loop

# group = ["Alice", "Bob", "Charlie", "Dylan", "Ella"]
group = ["Alice"]

while true
    # Todo fix grammar
    puts "There are #{group.length == 1 ? '1 member': group.length.to_s + ' members'} in the group"
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to select random user"
    puts "Press 4 to quit"
    
    #take input from user
    menu_input = gets.chomp.to_i

    case menu_input
    when 1
        puts "Enter name: "
        name = gets.chomp
        group.push(name)
    when 2
        puts "Random group output: "
        random_order_loop_running = true
        while random_order_loop_running
            # copied_group = group.clone
            # while copied_group.length > 0 
            #     random_index = rand(copied_group.length - 1)
            #     puts copied_group[random_index].capitalize
            #     copied_group.delete_at(random_index)
            # end

            # same as above
            group.shuffle.each do |name|
                puts name.capitalize
            end
            puts "Press 1 to go back"
            puts "Press 2 to quit"
            puts "Press any other key to regerate order of random group"
            choice = gets.chomp.to_i
            if choice == 1
                random_order_loop_running = false
            elsif choice == 2
                puts "Goodbye"
                exit
            else
                sleep(1)
                system "clear"
            end
        end
    when 3
        puts "The random user is #{group.sample.capitalize}"
    when 4
        # To do - check they want to quit
        puts "Type yes to quit"
        quit_choice = gets.chomp.downcase
        break if quit_choice == "yes"
    else 
        puts "Invalid input please try again"
    end
    sleep(2)
    system "clear"
end

puts "Good-bye."