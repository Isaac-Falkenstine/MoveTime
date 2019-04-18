class LocationFacade
  attr_reader :zip

  def initialize(zip)
    @zip = zip
  end

  def county
    service.county
  end

  private

  def service
   service = ZipService.new(self.zip)
  end
end
