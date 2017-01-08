require "vatsim_metar/version"
require 'curb'

class String
  def metar
    VatsimMetar.metar(self)
  end
end

module VatsimMetar
  def self.metar(icao)
    # metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}").body_str
    c = Curl::Easy.new("http://metar.vatsim.net/#{icao}")
    c.timeout = 5
    c.perform
    metar = c.body_str
    metar = "No valid METAR" if metar.include? "html"
    metar
  rescue Curl::Err::TimeoutError
    metar = "METAR timeout"
  rescue Curl::Err::ConnectionFailedError
    metar = "METAR timeout"
  end
end
