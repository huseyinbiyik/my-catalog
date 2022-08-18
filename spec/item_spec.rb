require './item'

describe Item do
  before :each do
    @item = Item.new('2020/12/22')
  end

  describe '#new' do
    it 'returns new item object' do
      @item.should be_an_instance_of Item
    end
    it 'throws error when arguments more than 1' do
      -> { Item.new('2022/12/22', '2022/12/22') }.should raise_exception ArgumentError
    end
  end

  describe 'publish date' do
    it 'returns publish_date key from the game object' do
      expect(@item.publish_date).to eq '2022/12/22'
    end
  end

  describe 'can_be_archived?' do
    it 'returns false if it older than 10 years' do
      expect(@item.can_be_archived?).to eq false
    end
  end
end
