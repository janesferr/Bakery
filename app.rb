require 'sinatra'

require 'sendgrid-ruby'

get '/' do
    erb :home
  end
  
  def send_email(recipient)
    Newsletter.welcome(recipient).deliver_now
  end
  
  get '/cookies' do
    erb :cookies
  end

  get '/cakes' do
    # @cakes_1 = Cake.new("Pretzel", "/photos/cakes/Redvelvet.jpeg", "$3", "Salty and sweet, the best of both worlds.")
    # @cakes_2 = Cake.new("Peanut Butter Swirl", "/photos/cakes/peanut.jpg", "$3", "Rich and Decadant, sugar free peanut butter mixed with dark chocolate.")
    # @cakes_3 = Cake.new("Fruit Tart", "/photos/cakes/fruit.jpg", "$3", "A small handheld french pasty of sublime decadance.")
    # @cakes_4 = Cake.new("Strawberry Short Cake", "/photos/cakes/strawberry.jpg", "$3", "Bright and fresh for a summer evening.")
    # @cakes_5 = Cake.new("Cherry Chocolate Chip", "/photos/cakes/Chocolate-Chip-Cherry.jpg", "$3", "Robust, sweet, and sour. Tart cherries paired with our darkest chocolate.")
    # @cakes_6 = Cake.new("Caipirinha", "/photos/cakes/caipirinha.jpg", "$3", "Brazillian flavor of lime and cocounut.")
    erb :cakes
  end

  get '/muffins' do
    erb :muffins
  end
  
  