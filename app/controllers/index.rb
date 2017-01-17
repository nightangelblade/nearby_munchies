get '/' do
  @locations = Location.all
  erb :"index.html"
end
