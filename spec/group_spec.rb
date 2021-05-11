require_relative("../group")

describe 'Group' do # everytest in this is related to group class
    before(:each) do
        @group = Group.new("Test Group")
    end

    it 'should be an instance of a Group' do
        expect(@group).to be_a Group
    end
   
    it 'should initialize with a name property' do
        expect(@group.name).to eq("Test Group")
    end

    it 'should have an array of names' do
        expect(@group.names_array).to be_an_instance_of(Array)
        # I expect the group method names_array to be an instance of Array
    end

    describe '.randomise_order' do
        it 'should be defined' do
            expect(defined? @group.randomise_order).to eq("method")
        end

        it 'should return an Array' do
            expect(@group.randomise_order).to be_an_instance_of(Array)
        end

        it 'should return an array that contains all items in @names_array' do
            expect(@group.randomise_order).to include(*@group.names_array)
        end

        describe '.output_random_array' do
            it 'should be defined' do
                expect(defined? @group.output_random_array).to eq("method")
            end

            it 'should output a name from the @names_array' do
                expect{@group.output_random_array}.to output(/#{Regexp.quote(@group.names_array.sample)}/).to_stdout #going to output at least one name from the array
                #see squiggly brackets for testing 'output'
            end
        end

        describe '.add_name' do
            it 'should be defined' do
                expect(defined? @group.add_name).to eq("method")
            end
            it 'should increase @names_array by one' do
                length = @group.names_array.length
                expect(@group.add_name("Bob").length).to be(length + 1)
            end
        end
    end
end