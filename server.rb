require "webrick"

root = File.expand_path "public/"

def server_callback(req, res)
  puts req.request_uri
end

request = WEBrick::HTTPRequest.new WEBrick::Config::HTTP
response = WEBrick::HTTPResponse.new WEBrick::Config::HTTP

server = WEBrick::HTTPServer.new :Port => 8000,
  :DocumentRoot => root,
  :RequestCallback = server_callback(request, response)
server.start

