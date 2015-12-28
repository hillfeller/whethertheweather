class Location < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  belongs_to :user

  forecast = ForecastIO.forecast(40, -7)

end
