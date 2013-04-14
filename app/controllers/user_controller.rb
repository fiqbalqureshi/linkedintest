class UserController < ApplicationController

  def profile
    if session[:auth_token].nil?
      oauth_verifier = params[:oauth_verifier]
      atoken, asecret = linkedin_client.authorize_from_request(session[:request_token],
	                        session[:request_secret],
	                        oauth_verifier)
      session[:auth_token] = atoken
      session[:auth_secret] = asecret
    else
      linkedin_client.authorize_from_access(session[:auth_token], session[:auth_secret])
    end

	#  https://developer.linkedin.com/documents/profile-api
    @profile = linkedin_client.profile(:fields => %w(first-name last-name headline positions educations))
  end
end