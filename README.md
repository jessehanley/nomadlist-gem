
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

To create a connection require 'nomadlist' in your code and add Nomadlist::City.find(city_id).result[0] where city_id is the name of the city followed by the country.

As an example, let's say I had a blog that I was building where I wanted to pull in some cool data about the cities I was visiting.

On my post model I could add a column called city_id...

    city_id = "amsterdam-netherlands"

Now we can jump over to my posts controller and add...

    require 'nomadlist'

After that's done I can add the following to my show method...

    def show
        @post = Post.friendly.find(params[:id])
        @place = Nomadlist::City.find("amsterdam-netherlands").result[0]
    end

Great! Now we've done that we can do the following commands

    <%= @place.info.city.name %>  = 'amsterdam'

    <%= @place.info.country.city.name %> = 'netherlands'

    <%= @place.info.weather.type %> = 'Partly Cloudy'

and much more!

For a full list have a look through the raw JSON here: https://nomadlist.com/api/v2/list/cities/amsterdam-netherlands

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jessehanley/nomadlist. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
