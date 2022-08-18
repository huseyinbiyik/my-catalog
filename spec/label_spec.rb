require './label'

describe Label do
  context 'instantiate Label class' do
    label = Label.new('Test_title', 'Test_color')

    it 'returns title from the Label object' do
      expect(label.title).to eq 'Test_title'
    end
    it 'returns color from the Label object' do
      expect(label.color).to eq 'Test_color'
    end
  end
end
