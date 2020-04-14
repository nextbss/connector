# Connector

[![](https://img.shields.io/badge/connector-blue)](https://www.nextbss.co.ao)
[![](https://img.shields.io/badge/nextbss-opensource-blue.svg)](https://www.nextbss.co.ao)

**A client library that helps you easily interact with the Enterprise Connector API to send SMS's.**


## Installation
```ruby
gem 'connector', :git => "git://github.com/nextbss/connector.git"
```

### Send an SMS
```ruby
  require 'connector'

  options = {"api_key" => "YOUR_API_KEY"}
  Connector.send_sms("Hey, I am a developer", "+244994567098", options)

```

### Have any doubts?
In case of any doubts, bugs or the like, please leave an issue. We would love to help.

License
----------------

The library is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
