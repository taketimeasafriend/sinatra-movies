# ruby -I lib  app.rb

require 'sinatra'
require 'movie'


get('/movies') do
  @movies = []
  @movies[0] = Movie.new
  @movies[0].title = "Jaws"
  erb :index
end

get('/movies/new') do
  erb :new
end

post('/movies/create') do
  "received #{params.inspect}"
end
