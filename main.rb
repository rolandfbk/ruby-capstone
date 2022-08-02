require './app'

def main
  app = App.new
  book_app = Bookapp.new
  app.run book_app
end
