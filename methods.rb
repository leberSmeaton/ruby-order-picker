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
        puts capitalize_multi_word_string(name)
        # we're calling above and linking to bottom captialize_multi_word_string method instead of...
        # puts name.capitalize 
    end
end

# output_random_group_order(["tony hawk", "the rock", "someone cool"])
# if we were to call this code here or earlier in the index.rb before the below code we'd find an error.

def add_member_to_group(arr) # linking back to index.rb
    puts "Enter name: "
    name = gets.chomp
    arr.push(name) #passing in our group 'arr'
    # pp arr #printing and seeing array
end

def capitalize_multi_word_string(str)
    # name.split(" ").map {|word| word.capitalize}.join(" ")
    # each time we create a variable
    arr = str.split(" ")
    capitalized_array = arr.map {|word| word.capitalize}
    capitalized_string = capitalized_array.join(" ")
    return capitalized_string
end

def wait_clear(time) # add a time variable to make the code wait longer
    sleep(time)
    system "clear"
end

def quit_program
    puts "Type yes to quit"
    quit_choice = gets.chomp.downcase
    if quit_choice == "yes"
        puts "thanks for using group generator 9000"
        exit
    end
end


# output_random_group_order(["tony hawk", "the rock", "someone cool"])
# we can call this here because all the methods have already run.