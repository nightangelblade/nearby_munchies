get '/locations' do
  erb :"/locations/new.html"
end

get '/locations/:id' do
  @location = Location.find(params[:id])
  @map_location = convert_to_parameter(@location.address)
  erb :"/locations/show.html"
end

post '/locations/new' do
  @location_info = params[:location]
  p @location_info
  if @location_info[:address] != "" && @location_info[:address] != "Enter your address"
    @location = Location.new(address: @location_info[:address])
  else
    @location = Location.new(latitude: @location_info[:latitude].to_f, longitude: @location_info[:longitude].to_f)
  end
  if @location.save
    redirect "/locations/#{@location.id}"
  else
    erb :"/locations/new.html"
  end
end
