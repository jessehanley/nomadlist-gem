
[![NomadlistRubyGem](https://join.nomadlist.com/assets/logo.png)](http://nomadlist.com)


# A Simple Ruby Wrapper For Nomadlist

Give your Rails app access to the best cities to live and work remotely for digital nomads. Includes: cost of living, internet speed, weather and other awesome metrics.

Follow [@jessethanley](https://twitter.com/jessethanley) for updates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nomadlist'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nomadlist

## Usage

To create a connection require 'nomadlist' in your code and add Nomadlist::City.find(city_id).result[0] where city_id is the name followed by the country.

Let's say you wanted to pull a bunch of data for Amsterdam.

id = "amsterdam-netherlands"

@place = Nomadlist::City.find(id).result[0]

place.info.city.name = 'amsterdam'

place.info.country.city.name = 'amsterdam'

place.info.weather.type = 'Partly Cloudy'

and much more!


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jessehanley/nomadlist. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
