require './game'

describe Game do
  context 'instantiate game' do
    game = Game.new('Test_publish_date', 'Test_multiplayer', 'Test_last_played_at')

    it 'returns publish_date key from the game object' do
      expect(game.publish_date).to eq 'Test_publish_date'
    end
    it 'returns multiplayer key from the game object' do
      expect(game.multiplayer).to eq 'Test_multiplayer'
    end
    it 'returns last_played_at key from the game object' do
      expect(game.last_played_at).to eq 'Test_last_played_at'
    end
  end
end
