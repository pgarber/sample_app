class StaticPagesController < ApplicationController
  def home
  	if signed_in?
  	  @micropost = current_user.microposts.build 
  	  @feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def help
  end

  def about
  end	

  def contact
  end	

  def give_feedback # moved to users
    # put stuff here like which user we're giving feedback for
  end

end
