class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :set_msg, :current_msg

  private
  
  def set_msg str
    session[:msg] = str
  end

  def current_msg
    return session[:msg] if defined?(session[:msg])
    return ''
  end

end
