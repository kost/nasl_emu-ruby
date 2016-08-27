# NaslEmu

Implementation of NASL specific functions. This is basic implementation of NASL specific functions in order to speed up PoC/exploit development.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nasl_emu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nasl_emu

## Usage

```
[1] pry(main)> require 'nasl_emu'
=> false
[2] pry(main)> crap(20)
=> "XXXXXXXXXXXXXXXXXXXX"
[3] pry(main)> crap(20,'A')
=> "AAAAAAAAAAAAAAAAAAAA"
[4] pry(main)> hex2raw('414141')
=> "AAA"
[5] pry(main)> raw_string(41,41)
=> "AA"
[6] pry(main)>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nasl_emu. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

