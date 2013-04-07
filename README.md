# gnip-stream
gnip-stream is a ruby library to connect and stream data from [GNIP](http://gnip.com/).
It utilizes EventMachine and threads under the hood to provide a true streaming
experience without you having to worry about writing non blocking code.

## Installation

Installing gnip-stream is easy. Simply run `gem install gnip-stream` or add the following line to your `Gemfile`:

```ruby
gem 'gnip-stream', :git => "https://github.com/eriwen/gnip-stream"
```

##Simple Usage

```ruby
require 'gnip-stream'

### To connect to the special twitter powertrack api
twitter_stream = GnipStream::PowertrackClient.new("http://yourstreamingurl.gnip.com", "someuser", "password")
twitter_stream.consume do |message|
  #process the message however you want
  puts message
end

### To Connect to the Facebook API
facebook_stream = GnipStream::FacebookClient.new("http://yourstreamingurl.gnip.com", "someuser", "password")
facebook_stream.consume do |message|
  puts message
end
```

## Contributing
When submitting pull requests, please do the following to make it easier to incorporate your changes:

* Include unit and/or functional specs that validate changes you're making.
* Rebase your changes onto the HEAD of my fork if you can do so cleanly.
* If submitting additional functionality, provide an example of how to use it.
* Please keep code style consistent with surrounding code.

## Testing
You can run all tests by simply running `bundle exec rake test` from your favorite shell.

## Contributors

* [Ryan Weald](https://github.com/rweald)
* [Sharethrough Team](https://github.com/sharethrough)
* [Eric Wendelin](http://www.eriwen.com)

##License
MIT. See [LICENSE](https://github.com/eriwen/gnip-stream/blob/master/LICENSE) file for more details.

Special thanks to [Sharethrough](http://www.sharethrough.com/)
