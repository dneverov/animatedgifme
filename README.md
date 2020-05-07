# Animatedgifme-v1

A ruby library for http://animatedgif.me. Created for the _**current**_ Animatedgif JSON.

A gem example from the tutorial: [Consuming an API Using HTTParty and Creating a Gem](https://gorails.com/episodes/23) @ GoRails by Chris Oliver.

## Installation

Add this line to your application's Gemfile:

    gem 'animatedgifme-v1'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install animatedgifme-v1

## Usage

```ruby
Animatedgifme.find(1700)
#=> "http://animatedgif.me/uploads/f5005a560b8454791e809348c5927653.gif"

Animatedgifme.tagged("cat")
#=> "http://animatedgif.me/uploads/c74bcc6e60f81bb31652cbdbdd732261.gif"

Animatedgifme.random "cat"
#=> "http://animatedgif.me/uploads/8666ff05ceebf8ad03eefdc2e2d0560d.gif"
```

## Testing

    $ bundle exec rake


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dneverov/animatedgifme.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
