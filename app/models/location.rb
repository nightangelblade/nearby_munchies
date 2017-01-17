require 'geocoder'

class Location < ActiveRecord::Base
  before_save :address_latlon, if: ->(obj){obj.latitude.present? and obj.longitude.present?}
  before_save :location_address, if: ->(obj){obj.address.present? and obj.address_changed?}
  before_save :time

  def location_address
    @latitude ||= Geocoder.coordinates(self.address)[0]
    self.latitude = @latitude
    @longitude ||= Geocoder.coordinates(self.address)[1]
    self.longitude = @longitude
  end

  def address_latlon
    coordinates = [self.latitude, self.longitude]
    @address ||= Geocoder.address(coordinates)
    self.address = @address
  end

  def time
    @time ||= Time.now.strftime("%I:%M:%S %Z %z")
    self.search_time = @time
  end
end
