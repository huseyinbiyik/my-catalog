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

def get_selection(choice)
  case choice
  when 1
    # call method
  when 2
    @app.add_game
  when 8
    @app.add_book
  when 11
    @exit = true
  else
    puts 'Wrong input!'
  end
end

def main()
  until @exit
    @options.each do |item|
      puts item
    end
    choice = gets.chomp.to_i
    get_selection(choice)
  end
end

main
