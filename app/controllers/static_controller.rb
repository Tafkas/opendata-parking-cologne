class StaticController < ApplicationController
  def home
    require 'net/http'
    source = 'http://www.stadt-koeln.de/externe-dienste/open-data/parking.php'
    resp = Net::HTTP.get_response(URI.parse(source))
    @data = JSON.parse(resp.body)
  end

  def about
  end
end
