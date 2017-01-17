get '/locations' do
  erb :"/locations/new.html"
end

get '/locations/:id' do
  @location = Location.find(params[:id])
  erb :"/locations/show.html"
end

post '/locations/new' do
  @location = Location.new(address: params[:location_address])
  if @location.save
    redirect '/'
  else
    erb :"/locations/new.html"
  end
end
