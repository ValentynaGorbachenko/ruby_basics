RSpec.describe Array do
  before do
    @a = Array.new
    @b = Array(1..5)
  end
  it 'tests the length of the array to be equal 0 ' do
    expect(@a.length).to eq(0)
  end
  it 'tests the length of the array not to be equal 0' do 
    expect(@b.length).not_to eq(0)
  end
  it {is_expected.to be_a_kind_of(Array)}
  it { is_expected.to respond_to(:length).with(0).arguments }
  it { is_expected.to respond_to(:hash, :class, :to_s) }
  it { is_expected.to respond_to(:compact, :flatten) }
end