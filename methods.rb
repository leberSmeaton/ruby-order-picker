# conencted to index.rb
# defining the method 
def output_group_size(length) # length is the placeholder
    # if else or case statement is an option
    if length == 1
        puts "there is 1 member in the group"
    elsif length == 0
        puts "the group is empty"
    else
        puts "there are #{length} members in the group"
    end
end

def menu_input_select
    puts "Press 1) to add a member to the group"
    puts "Press 2) to display a random group"
    puts "Press 3) to select random user"
    puts "Press 4) to quit"
    #take input from user and returns menu_input
    menu_input = gets.chomp.to_i
    # returns gets.chomp.to_i
    return menu_input
end