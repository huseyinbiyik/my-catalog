require './book'

describe Book do
  context 'instantiate book' do
    book = Book.new('12/12/2022', 'Test_publisher', 'bad')

    it 'returns publish_date key from the Book object' do
      expect(book.publish_date).to eq '12/12/2022'
    end
    it 'returns publisher key from the book object' do
      expect(book.publisher).to eq 'Test_publisher'
    end
    it 'returns cover_state key from the book object' do
      expect(book.cover_state).to eq 'bad'
    end
  end
end
