# Twitter::Ratelimit::Patch(MURIYARI)

This gem is patch for [twitter](https://github.com/sferik/twitter). Get rate limit from the header on api request.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'twitter-ratelimit-patch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install twitter-ratelimit-patch

## Usage

```ruby
client = Twitter::REST::Client.new KEY
user = client.user
user.rate_limit
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/flum1025/twitter-ratelimit-patch. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Twitter::Ratelimit::Patch project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/flum1025/twitter-ratelimit-patch/blob/master/CODE_OF_CONDUCT.md).
