require 'geocoder'

class Location < ActiveRecord::Base
  before_save :address, if: ->(obj){obj.latitude.present? and obj.longitude.present?}
  before_save :location, if: ->(obj){obj.address.present? and obj.address_changed?}

  def location
    @latitude ||= Geocoder.coordinates(address)[0]
    self.latitude = @latitude
    @longitude ||= Geocoder.coordinates(address)[1]
    self.longitude = @longitude
  end

  def address
    coordinates = [self.latitude, self.longitude]
    @address ||= Geocoder.address(coordinates)
    self.address = @address
  end
end
