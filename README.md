# VatsimMetar

A Ruby gem which pulls and displays the latest VATSIM metar for a particular station (ICAO code).

## Installation

Add this line to your application's Gemfile:

    gem 'vatsim_metar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vatsim_metar

## Usage

The `.metar` method can be applied to a string (or variable containing a string), representing a valid ICAO code. Like this:

```ruby
"EGLL".metar # => "EGLL 291750Z 22016KT 9999 SCT023 SCT032 18/13 Q1005"

airport = "EGLL"
airport.metar # => "EGLL 291750Z 22016KT 9999 SCT023 SCT032 18/13 Q1005"
```
The input ICAO code is **not case sensitive**, so the following should work as well:

```ruby
"kjfk".metar # => "KJFK 291751Z 24016KT 10SM FEW180 SCT250 32/21 A2968 RMK AO2 SLP049 T03170211 10322 20222 58008"

airport = "kjfk"
airport.metar # => "KJFK 291751Z 24016KT 10SM FEW180 SCT250 32/21 A2968 RMK AO2 SLP049 T03170211 10322 20222 58008"
```

## Technicalities

This library augments the default Ruby `String` class with a method named `.metar`. It returns a string, containing the latest Vatsim METAR. The data is obtained via `curl` from Vatsim's web API, hence the `curb` dependency.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
