class AuthController < ApplicationController

  def index
	request_params = {:oauth_callback => "http://#{request.host_with_port}/profile"}
    request_token = linkedin_client.request_token(request_params)
    session[:request_token] = request_token.token
    session[:request_secret] = request_token.secret

    redirect_to linkedin_client.request_token.authorize_url
  end
 
end