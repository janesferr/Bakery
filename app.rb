require 'sinatra'
require './class'

require 'sendgrid-ruby'

get '/' do
    erb :home
  end
  
  def send_email(recipient)
    Newsletter.welcome(recipient).deliver_now
  end
  
  get '/cookies' do
    @cookie_1 = Cookie.new("Macaron", "/photos/cookies/macaroon.jpeg", "$4", "Etherial merenge and almond based cookies with lucious jam filling.")
    @cookie_2 = Cookie.new("Linzer Tart", "/photos/cookies/linzar.jpeg", "$3", "Crisp cookies with tart jam  and powdered sugar.")
    @cookie_3 = Cookie.new("Chocolate Chip", "/photos/cookies/chochochip.jpeg", "$2", "Classic cookies fresh from your mom's kitchen.")
    @cookie_4 = Cookie.new("Chocolate Macaroon", "/photos/cookies/chocomac.jpeg", "$4", "Coconut cookies dunked in chocolate and topped with shredded coconut.")
    @cookie_5 = Cookie.new("Lemon Curd", "/photos/cookies/lemoncurd.jpg", "$3", "Sweet and sour creamy filling in a simple cookie.")
    @cookie_6 = Cookie.new("Peanut Butter Chocolate Mousse", "/photos/cookies/peanut.jpg", "$3", "Fluffy and decadent cookie with all the good stuff.")
    @cookie_7 = Cookie.new("Double Chocolate", "/photos/cookies/fudge.jpeg", "$3", "2X the chocolate!")
    @cookies = [@cookie_1, @cookie_2, @cookie_3, @cookie_4, @cookie_5, @cookie_6, @cookie_7]
    erb :cookies
  end

  get '/cakes' do
    @cakes_1 = Cake.new("Pretzel", "/photos/cakes/Redvelvet.jpeg", "$3", "Salty and sweet, the best of both worlds.")
    @cakes_2 = Cake.new("Peanut Butter Swirl", "/photos/cakes/peanut.jpg", "$3", "Rich and Decadant, sugar free peanut butter mixed with dark chocolate.")
    @cakes_3 = Cake.new("Fruit Tart", "/photos/cakes/fruit.jpg", "$3", "A small handheld french pasty of sublime decadance.")
    @cakes_4 = Cake.new("Strawberry Short Cake", "/photos/cakes/strawberry.jpg", "$3", "Bright and fresh for a summer evening.")
    @cakes_5 = Cake.new("Cherry Chocolate Chip", "/photos/cakes/Chocolate-Chip-Cherry.jpg", "$3", "Robust, sweet, and sour. Tart cherries paired with our darkest chocolate.")
    @cakes_6 = Cake.new("Caipirinha", "/photos/cakes/caipirinha.jpg", "$3", "Brazillian flavor of lime and cocounut.")
    @cakes = [@cakes_1, @cakes_2, @cakes_3, @cakes_4, @cakes_5, @cakes_6]
    erb :cakes
  end

  get '/muffins' do
    erb :muffins
  end
  
  