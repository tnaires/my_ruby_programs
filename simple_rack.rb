require 'rack'

rack_app = lambda {|env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]]}
Rack::Handler::WEBrick.run rack_app, :Port => 8500
