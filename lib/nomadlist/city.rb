require 'faraday'
require 'json'
require 'ostruct'

API_URL = "https://nomadlist.com/api/v2/list/cities/"

module Nomadlist
  class City

    def self.find(id)
      response = Faraday.get("#{API_URL}/#{id}")
      attributes = JSON.parse(response.body, object_class: OpenStruct)
    end

    def self.all
      response = Faraday.get(API_URL)
      city = JSON.parse(response.body)
      city.map { |attributes| new(attributes) }
    end
  end
end
