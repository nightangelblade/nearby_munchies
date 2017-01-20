get '/' do
  @locations = Location.last(5)
  erb :"index.html"
end
