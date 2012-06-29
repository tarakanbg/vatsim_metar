require 'spec_helper.rb'

describe String do

  describe "icao code" do
    it "is interpreted correctly as string" do
      input = "egll"
      input.upcase.should eq("EGLL")
    end
  end

  describe ".metar" do

    it "should use curl" do
      icao = "egll"
      metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}")
    end

    it "should return relevant metar for EGLL" do
      icao = "egll"
      metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}")
      metar = metar.body_str
      metar[0..3].should eq("EGLL")
    end

    it "should return relevant metar for KJFK" do
      icao = "kjfk"
      metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}")
      metar = metar.body_str
      metar[0..3].should eq("KJFK")
    end

    it "should be case insensitive" do
      icao = "KJFK"
      metar = Curl::Easy.perform("http://metar.vatsim.net/#{icao}")
      metar = metar.body_str
      metar[0..3].should eq("KJFK")
    end

    it "should return valid result" do
      input = "egll"
      input.metar[0..3].should eq("EGLL")
      "kjfk".metar[0..3].should eq("KJFK")
    end

  end

end
