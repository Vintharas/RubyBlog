class ApplicationController < ActionController::Base
  # this methods are available to all of our controllers
  protect_from_forgery

  private
  
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'admin' && password == 'password'
    end
  end

end
