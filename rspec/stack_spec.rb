require_relative 'stack'

RSpec.describe Stack do
  describe 'has default values and methods' do
    before do
      @stack = Stack.new
    end
    it {is_expected.to be_a_kind_of(Stack)}
    it { is_expected.to respond_to(:data_store, :back, :push, :pop, :size, :is_empty) }
    it { is_expected.to have_attributes(:data_store => []) }
    it { is_expected.to have_attributes(:back => 0)}
    it { is_expected.to have_attributes(:size => 0)}
    it "does raise NoMethodError on assignment of back property" do
      expect { @stack.back = 5 }.to raise_error(NoMethodError)
    end
  end
  describe 'should have updated attributes after modifications' do
    before do
      @stack = Stack.new
      @stack.push(1).push(2)
    end
    it 'has an attribute, data_store, which displays an array of the values in the Stack' do
      expect(@stack.data_store).to match_array([1,2])
    end
    it 'has an attribute, back, which displays the last value in the Stack. Should be 0 by default and a user should not be able to set the back attribute' do
      expect(@stack.back).to eq(2)
      expect(@stack.data_store).to match_array([1,2])
    end
    it 'has a push method which adds a new value to the end of the Stack' do
      expect { @stack.push(3) }.to change(@stack, :back).from(2).to(3)
    end
    it 'has a pop method which removes the last value of the Stack, should return nil if there is nothing to pop' do
      expect(@stack.pop).to eq(2)
      expect(@stack.pop).to eq(1)
      expect(@stack.pop).to eq(nil)
    end
    it 'has back property chenged after poping the last elem and it returns 0 when the Stack is empty' do
      expect { @stack.pop }.to change(@stack, :back).from(2).to(1)
      expect { @stack.pop }.to change(@stack, :back).from(1).to(0)
    end
    it 'has a size method that returns a size of the Stack' do
      expect(@stack.size).to be(2)
    end
  end
end