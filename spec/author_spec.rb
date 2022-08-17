require './author'

describe Author do
  context 'instantiate Author class' do
    author = Author.new('Test_first_name', 'Test_last_name')

    it 'returns first name from the Author object' do
      expect(author.first_name).to eq 'Test_first_name'
    end
  end
end
