require "vatsim_metar/version"

class String
  def metar
    VatsimMetar.metar(self)
  end
end

module VatsimMetar
  def self.metar(input)
    "moo"
  end

private


end
