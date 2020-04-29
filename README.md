# Connector

[![](https://img.shields.io/badge/connector-blue)](https://www.nextbss.co.ao)
[![](https://img.shields.io/badge/nextbss-opensource-blue.svg)](https://www.nextbss.co.ao)

**A client library that helps you easily interact with the Enterprise Connector API to send SMS's.**


## Installation
```ruby
gem 'connector', :git => "git://github.com/nextbss/connector.git"
```
or

```ruby
require 'connector'
```

### Send an SMS
```ruby
  options = {"api_key" => "YOUR_API_KEY"}
  Connector.send_sms("Hey, I am a developer", "+244994567098", options)
```

### Get all SMS's and returns an array of hashes 
```ruby
  options = {"api_key" => "YOUR_API_KEY"}
  Connector.get_all_sms(options)

  # [{"id"=>"0f0a4949-6baf-4bb6-86fd-de0d55d341a8", "created_at"=>"2020-04-24T19:17:01.4", "content"=>"This message from EC 01", "phone_number"=>"+244999000111", "number_of_messages"=>1, "status"=>"PROCESSING"}, {"id"=>"121e635b-0dc2-475a-929d-d10e726cfc36", "created_at"=>"2020-04-24T10:43:16.067", "content"=>"This message is from EC 02", "number_of_messages"=>1, "status"=>"PROCESSING"}] 
```

### Have any doubts?
In case of any doubts, bugs or the like, please leave an issue. We would love to help.

License
----------------

The library is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
