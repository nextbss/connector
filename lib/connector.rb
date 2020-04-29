require 'json'
require 'faraday'

module Connector
  @base_uri = "https://ec.nextbss.co.ao/api/v1/messages"
  def self.send_sms(message, phone_number, options = {})
    if message == nil
    	raise "Message content must not be nil"  
    end

    if phone_number == nil
	    raise "Phone number can not be nil"
    end

    if options == nil
	    raise "options can not be nil"
    end
    
    if options["api_key"] == nil || options["api_key"] == ""
	    raise "api key can not be nil or empty"
    end

    body = { "phone_number" => phone_number, "content" => message }.to_json
    headers = { "Content-Type" => "application/json", "X-API-KEY" => options["api_key"] }
    response = Faraday.post(@base_uri, body, headers) 
    
    if response.status == 200
	    time = Time.now
      puts "Message Sent at #{time} via EC"
    else
      puts response.inspect
	    raise "operation failed: #{response}" 
    end
  end

  def self.get_all_sms(options = {})
    if options["api_key"] == nil
      raise "API Key cannot be nil"
    end

    headers = { "Content-Type" => "application/json", "X-API-KEY" => options["api_key"]}
    response = Faraday.get(@base_uri) do |request|
      request.headers = headers
    end

    if response.status == 200
      messages = JSON.parse(response.body)["data"]
    else
	    raise "operation failed: #{response}" 
    end  
  end
end
