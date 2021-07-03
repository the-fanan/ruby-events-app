class HomeController < ApplicationController
  def index
    redirect_to "/events/new" if user_signed_in?
  end
end
