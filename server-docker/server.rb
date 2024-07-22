require 'sinatra'
require 'dotenv'
  
Dotenv.load

class Application < Sinatra::Base
  get '/config' do
    content_type "application/json                                                                      "
    { publishableKey: "key" }.to_json
  end
  
  post '/create-checkout-session' do
    content_type 'application/json'

    redirect ENV['YOUR_DOMAIN'] + '/success.html', 303
  end
  
  get '/' do
    content_type "text/html"
    send_file File.join(settings.public_folder, 'index.html')
  end

  #get '/:resource' do |resource|
  get '/*' do |resource|
    p resource = resource[0..-2] if resource=~/\/$/
    p path = File.join(settings.public_folder, resource, 'index.html')
    content_type "text/html"
    send_file path
  end
end
