class ZipService

  def initialize(location)
    @location = location
  end

  def conn
    Faraday.new(url: "https://maps.googleapis.com/maps/api/geocode/") do |f|
      f.adapter  Faraday.default_adapter
    end
  end

end
