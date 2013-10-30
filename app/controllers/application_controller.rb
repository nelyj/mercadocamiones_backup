class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :add_www_subdomain

  private
  def add_www_subdomain
    unless /^www/.match(request.host)
      redirect_to("#{request.protocol}x.com#{request.request_uri}",
                  :status => 301)
    end
  end
end
