require_relative 'app'

@app = App.new
@options = [
  '1: List all books',
  '2: List all music albums',
  '3: List of games',
  "4: List all genres (e.g 'Comedy', 'Thriller')",
  "5: List all labels (e.g. 'Gift', 'New')",
  "6: List all authors (e.g. 'Stephen King')",
  "7: List all sources (e.g. 'From a friend', 'Online shop')",
  '8: Add a book',
  '9: Add a music album',
  '10: Add a game',
  '11: Exit'
]
@exit = false

# rubocop:disable Metrics/CyclomaticComplexity
def get_selection(choice)
  case choice
  when 1
    @app.list_books
  when 2
    @app.list_albums
  when 3
    @app.list_games
  when 4
    @app.list_genres
  when 5
    @app.list_labels
  when 6
    @app.list_authors
  when 7
    @app.list_sources
  when 8
    @app.add_books
  when 9
    @app.create_music_album
  when 10
    @app.add_game
  when 11
    @app.save_files
    @exit = true
  else
    puts 'Wrong input! ⚠️'
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def main()
  @app.open_files
  until @exit
    @options.each do |item|
      puts item
    end
    choice = gets.chomp.to_i
    get_selection(choice)
  end
end

main
