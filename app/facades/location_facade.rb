class LocationFacade

  def initialize(zip)
    @zip = zip
  end

  def county
    binding.pry
    service.county
  end

  private

  def service
   service = ZipService.new
  end
end
