# Vatsim Metar

A Ruby gem which pulls and displays the latest VATSIM metar for a particular station (ICAO code).

[![Build Status](https://secure.travis-ci.org/tarakanbg/vatsim_metar.png?branch=master)](http://travis-ci.org/tarakanbg/vatsim_metar)
[![Gemnasium](https://gemnasium.com/tarakanbg/vatsim_metar.png?travis)](https://gemnasium.com/tarakanbg/vatsim_metar)
[![Gem Version](https://badge.fury.io/rb/vatsim_metar.png)](http://badge.fury.io/rb/vatsim_metar)
[![Code Climate](https://codeclimate.com/github/tarakanbg/vatsim_metar.png)](https://codeclimate.com/github/tarakanbg/vatsim_metar)

## Compatibility

[Ruby 2.0](http://www.ruby-lang.org/en/downloads/) or higher

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

## Changelog

### v. 0.2.4 - 8 January 2017

* dependcies update

### v. 0.2.2 - 31 August 2013

* added timeout limit
* added connection failure rescue
* check for METAR validity
* dependency update

### v. 0.1.0 - 26 February 2013

* added Ruby 2.0 support

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Make sure all tests pass!
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## Credits

Copyright © 2017 [Svilen Vassilev](http://svilen.rubystudio.net)

*If you find my work useful or time-saving, you can buy me a cup of coffee:*

Bitcoin: `1FtY5KnFcC7QDQCNwoXErQCtx8z9hdTWcD`

Dogecoin: `DE9Tb4ge4YM7rAFFwKNAQo2mEUfiEC9xRQ`

Released under the [MIT LICENSE](https://github.com/tarakanbg/vatsim_metar/blob/master/LICENSE)
