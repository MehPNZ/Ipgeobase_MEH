# frozen_string_literal: true

require_relative 'ipgeobase/version'
require_relative 'ipgeobase/meta_ip'
require 'addressable/uri'
require 'net/http'
# DEGIN

module Ipgeobase
  URL = 'http://ip-api.com/xml/'

  class Error < StandardError; end

  def self.lookup(ip)
    ip_adress = Addressable::URI.parse("#{URL}#{ip}")
    res = Net::HTTP.get(ip_adress)
    MetaIp.parse(res)
  end
end
# END
