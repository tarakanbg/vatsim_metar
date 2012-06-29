require "vatsim_metar/version"
require 'curb'

class String
  def metar
    VatsimMetar.metar(self)
  end
end

module VatsimMetar
  def self.metar(icao)
    metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}").body_str
  end

end
