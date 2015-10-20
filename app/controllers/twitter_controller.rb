class TwitterController < ApplicationController
  def authentication
  	redirect_to "/auth/twitter"
  end

  #remember to check if user is login before enter the home page
  def home
  end
end
