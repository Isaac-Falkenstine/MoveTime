class ZipService

  def initialize(location)
    @location = location
  end

  def conn
    Faraday.new(url: "https://maps.googleapis.com/maps/api/geocode/") do |f|
      f.adapter  Faraday.default_adapter
    end
  end

  def response
    url = "json?address=#{@location}&key=#{ENV['GOOGLE_API_KEY']}"
    conn.get(url)
  end

  def county
    JSON.parse(response.body, symbolize_names: true)[:results][0][:address_components][1][:long_name]
  end
end
