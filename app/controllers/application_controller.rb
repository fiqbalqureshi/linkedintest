# https://github.com/pengwynn/linkedin
require 'linkedin'

class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def linkedin_client
	if @linkedin_client.nil?
		@linkedin_client = LinkedIn::Client.new("rgup3vrlcnca", "f6kRE75yqDTSorVu")
	end
	@linkedin_client
  end
end
