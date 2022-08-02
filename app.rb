class App
  def run
    puts 'Welcome To The Catalog of My Things!'
    puts
    puts
    until list_options
      input = gets.chomp
      if input == '10'
        puts 'Have good day :)'
        save_data
        break
      end
      option(input)
    end
  end
end
