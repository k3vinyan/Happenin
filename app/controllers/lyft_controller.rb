require 'oauth2'
require 'rack/oauth2'
require 'net/http'

class LyftController < ApplicationController

  def index

  id = "cc5huQqtAXMC"
  secret = "pseDGpEtvSZesNY7Zud_xm9vusZ_pSVM"
  callback = "http://localhost:3000/"
  host = "https://api.lyft.com/oauth/token"

uri = URI.parse(host)

puts uri

# Shortcut
response = Net::HTTP.post_form(uri, {:client_id => id, :client_secret => secret, :grant_type => "client_credentials", :scope => "public"})

puts response.inspect
render :json => response.body
 end

end
