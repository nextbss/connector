Gem::Specification.new do |s|
  s.name		= 'connector'
  s.version		= Connector::VERSION
  s.date		= '2020-04-12'
  s.summary		= "Send SMS's easily"
  s.description		= "A ruby client for the Enteprise Connector Short Message Service API"
  s.authors		= ["Alexandre Juca, Sergio Maziano"]
  s.email		= 'alexandre.juca@nextbss.co.ao'
  s.homepage		= 'https://www.nextbss.co.ao'
  s.license		= 'MIT'
  s.files         	= ["lib/connector.rb"]
  s.bindir        	= "exe"
  s.executables   	= s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths 	= ["lib"]
  s.add_dependency	"faraday", "~> 1.0.1"
end
