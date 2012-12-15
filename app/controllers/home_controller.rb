class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  
  def index
    user_signed_in?
    current_user
    user_session
  end
end
