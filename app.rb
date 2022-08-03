class App
  def initialize
    @genres = []
    @albums = []
  end

  def run
    puts 'Welcome To The Catalog of My Things!'
    puts
    puts
    until list_options
      input = gets.chomp
      if input == '10'
        puts 'Have a good day :)'
        break
      end
      option(input)
    end
  end
end
