require './game'

describe Game do
  context 'instantiate game' do
    game = Game.new('Test_multiplayer', 'Test_last_played_at', 'Test_genre', 'Test_author', 'Test_source', 'Test_label',
                    'Test_publish_date')

    it 'returns multiplayer key from the game object' do
      expect(game.multiplayer).to eq 'Test_multiplayer'
    end
    it 'returns last_played_at key from the game object' do
      expect(game.last_played_at).to eq 'Test_last_played_at'
    end
    it 'returns genre key from the game object' do
      expect(game.genre).to eq 'Test_genre'
    end
    it 'returns author key from the game object' do
      expect(game.author).to eq 'Test_author'
    end
    it 'returns source key from the game object' do
      expect(game.source).to eq 'Test_source'
    end
    it 'returns label key from the game object' do
      expect(game.label).to eq 'Test_label'
    end
    it 'returns publish_date key from the game object' do
      expect(game.publish_date).to eq 'Test_publish_date'
    end
  end
end
