module LocationsHelper
  def get_location_for_user(user)
    location = Location.new
    if user && user.locations.any?
      location.address = user.locations.last.address
    end
    location
  end
end
