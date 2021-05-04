# create empty array

group = []

# build menu system
# choices 1, 2, 3.
# case statement + while loop

while true
    puts "Press 1 to add a member to the group"
    puts "Press 2 to display a random group"
    puts "Press 3 to quit"
    
    menu_input = gets.chomp

    case menu_input
    when 1
        puts "Enter name: "
        name = gets.chomp
        group.push(name)
    when 2
        puts "Random group output: "
        # To do - output random group
    when 3
        # To do - check they want to quit
        break
    else 
        puts "Invalid input please try again"
    end
end