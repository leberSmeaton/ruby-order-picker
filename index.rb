# create empty array
# build menu system
# choices 1, 2, 3.
# case statement + while loop

group = ["Alice", "Bob", "Charlie", "Dylan"]

while true
    puts "There are #{group.length} memebers in the group"
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to quit"
    
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
            copied_group = group.clone
            while copied_group.length > 0 
                random_index = rand(copied_group.length -1)
                puts copied_group[random_index].capitalize
                copied_group.delete_at(random_index)
            end
            puts "Press 1 to repeat"
            puts "Press 2 to quit"
            choice = gets.chomp.to_i
            if choice == 2
                exit
            end
        end
    when 3
        
        # To do - check they want to quit
        break
    else 
        puts "Invalid input please try again"
    end
    sleep(2)
    system "clear"
end

puts "Good-bye."