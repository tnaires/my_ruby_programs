require 'rack'

def my_method(env)
  [200, {}, ['Method called']]
end

Rack::Handler::WEBrick.run method(:my_method), :Port => 3000
