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

    body = { "phone_number" => phone_number, "content" => message }.to_json
    headers = { "Content-Type" => "application/json", "X-API-KEY" => options["api_key"] }
    resp = Faraday.post(@base_uri, body, headers) 
    if resp.status == 200
	time = Time.now
        puts "Message Sent at #{time} via EC"
    else
        puts resp.inspect
	raise "operation failed: #{resp}" 
    end
  end
end
