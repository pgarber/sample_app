class FeedbacksController < ApplicationController
  before_action :signed_in_user

  def create #make this work for feedbacks - it came from relationships controller 
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def new
  	@relationship - Relationship.new
  end


end

