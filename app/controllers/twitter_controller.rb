class TwitterController < ApplicationController
  def authentication
  	redirect_to "/auth/twitter"
  end

  #remember to check if user is login before enter the home page
  def home
  	#get parameter that should be used to post to twitter
	textarea = params[:textarea]
	#use line below to render out results for debuggin
	#render :text => textarea
  end

end
