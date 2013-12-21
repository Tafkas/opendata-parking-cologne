class StaticController < ApplicationController
  def home
    require 'net/http'
    source = 'http://www.stadt-koeln.de/externe-dienste/open-data/parking.php'
    resp = Net::HTTP.get_response(URI.parse(source))
    @data = JSON.parse(resp.body)
    
    @hash = Gmaps4rails.build_markers(@data["features"]) do |spots, marker|
      marker.lat spots["geometry"]["y"].to_f
      marker.lng spots["geometry"]["x"].to_f
    end
  end

  def about
  end
end
