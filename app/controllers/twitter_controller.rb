class TwitterController < ApplicationController

  def authentication
  	redirect_to "/auth/twitter"
  end

  def home
    if(session[:user_id])
      twiiterObj = current_user.twitter

      #use tweet get parameter and post to twitter
      message = params[:tweet]
      tweetMessage(twiiterObj,message)
      @homeTimeLine = getHomeTimeLine(twiiterObj)
    end
  end

  #post a message to twitter
  def tweetMessage(twitterObject, message)
    if(message != nil && message !="")
      twitterObject.update(message)
    end
  end

  def getHomeTimeLineViaAjax
    render json: current_user.twitter.home_timeline
  end

  def getHomeTimeLine(twitterObject)
    return twitterObject.home_timeline
  end


end



#use line below to render out results for debuggin
#render :text => textarea

#use line below to render a statement to the rails console
#Rails.logger.warn "sharad verma is logging"