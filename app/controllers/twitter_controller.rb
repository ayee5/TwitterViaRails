class TwitterController < ApplicationController

  def authentication
  	redirect_to "/auth/twitter"
  end

  def home
    if(session[:user_id])
      #use tweet get parameter and post to twitter
      message = params[:tweet]
      tweetMessage(message)
    end
  end

  #post a message to twitter
  def tweetMessage(message)
    if(message != nil && message !="")
      current_user.twitter.update(essage)
    end
  end

  def getHomeTimeLine
    return current_user.twitter.time_line()
  end
end



#use line below to render out results for debuggin
#render :text => textarea

#use line below to render a statement to the rails console
#Rails.logger.warn "sharad verma is logging"