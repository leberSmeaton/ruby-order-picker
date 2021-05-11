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
end