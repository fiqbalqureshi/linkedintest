# https://github.com/pengwynn/linkedin
require 'linkedin'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def linkedin_client
	if @linkedin_client.nil?
		@linkedin_client = LinkedIn::Client.new(LINKEDIN_APP_ID, LINKEDIN_SECRET)
	end
	@linkedin_client
  end
end
