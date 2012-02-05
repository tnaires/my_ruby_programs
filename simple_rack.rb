rack_app = lambda {|env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV[0]}"]]}
puts rack_app.call({})
