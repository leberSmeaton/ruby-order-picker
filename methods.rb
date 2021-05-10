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

# pass in an arguement to link back to index.rb
def output_random_group_order(collection) 
    # group.shuffle.each bringing in collection as arguement
    collection.shuffle.each do |name| # adding collection because arguement variable
        puts name.capitalize
    end
end

def add_member_to_group(arr) # linking back to index.rb
    puts "Enter name: "
    name = gets.chomp
    arr.push(name) #passing in our group 'arr'
    # pp arr #printing and seeing array
end