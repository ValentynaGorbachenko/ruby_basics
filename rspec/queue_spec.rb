require_relative 'queue'

RSpec.describe Queue do
  describe 'has default values and methods' do
    before do
      @queue = Queue.new
    end
    it {is_expected.to be_a_kind_of(Queue)}
    it { is_expected.to respond_to(:data_store, :back, :enqueue, :enqueue, :size, :is_empty) }
    it { is_expected.to have_attributes(:data_store => []) }
    it { is_expected.to have_attributes(:back => 0)}
    it { is_expected.to have_attributes(:size => 0)}
    it "does raise NoMethodError on assignment of back property" do
      expect { @queue.back = 5 }.to raise_error(NoMethodError)
    end
  end
  describe 'should have updated attributes after modifications' do
    before do
      @queue = Queue.new
      @queue.enqueue(1).enqueue(2)
    end
    it 'has an attribute, data_store, which displays an array of the values in the Queue' do
      expect(@queue.data_store).to match_array([1,2])
    end
    it 'has an attribute, back, which displays the last value in the Queue. Should be 0 by default and a user should not be able to set the back attribute' do
      expect(@queue.back).to eq(2)
      expect(@queue.data_store).to match_array([1,2])
    end
    it 'has a enqueue method which adds a new value to the end of the Queue' do
      expect { @queue.enqueue(3) }.to change(@queue, :back).from(2).to(3)
    end
    it 'has a dequeue method which removes the last value of the Queue, should return nil if there is nothing to dequeue' do
      expect(@queue.dequeue).to eq(1)
      expect(@queue.dequeue).to eq(2)
      expect(@queue.dequeue).to eq(nil)
    end
    it 'has back property chenged after dequeueing  the last elem and it returns 0 when the Queue is empty' do
      expect { @queue.dequeue }.to change(@queue, :back).from(2).to(1)
      expect { @queue.dequeue }.to change(@queue, :back).from(1).to(0)
    end
    it 'has a size method that returns a size of the Queue' do
      expect(@queue.size).to be(2)
    end
  end
end