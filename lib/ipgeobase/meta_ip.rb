# frozen_string_literal: true

require 'happymapper'
#require 'ipgeobase'

module Ipgeobase
  class MetaIp
    include HappyMapper

    tag 'query'
    element :city, String
    element :country, String
    element :countryCode, String
    element :lat, Float
    element :lon, Float
  end
end
