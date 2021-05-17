# pp ARGV
#ruby thinks you want to use argv as input, instead of input from terminal.

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
        group_instance = Group.new(rest[1] = "Default Group", rest[0])
    else
        puts 'Invalid argument, see readme for options'
        exit
    end
    # pp flag #hello
    # pp rest #from command line
end

