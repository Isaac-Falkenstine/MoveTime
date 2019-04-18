class LocationFacade

  def county(zip)
    service.county(zip)
  end

  private

  def service
   service = CityService.new
  end
end
