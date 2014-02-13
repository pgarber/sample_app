class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update]
  # before_action :admin_user,     only: [:destroy, :admin_user]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
  	@user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
  	@user = User.new
  end
  
  def create
    @user = User.new(user_params)    
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App"
      redirect_to @user   # redirects to user show page (which is what?)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User delted."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  #def give_feedback
  #end

  def feedback
  end

  def crunchdata
    null_array = Array.new(Attribute.count){ 0 } 
       all_feedback = Feedback.all 
       all_feedback.find(2).to_id  # just for debug 

      all_feedback.each do |vote| 

         @user = User.find(vote.to_id) 
         @user.name # remove - for debug 

         @user.ratings ||= null_array 
        # @user.ratings 
         @user.ratings[vote.attribute_id] = 17 # maybe I can't do it by modifying user 
         @user.ratings[3]  
         if @user.save   # user.save! and look for errors 
          render 'homepage' #"saved" 
         else 
          render 'show_follow' #"didn't save" 
         end 
         #{}User.find(vote.to_id).ratings[vote.attribute_id]+=1 
      end
  end




private

  	def user_params
      # add admin per Exercise 9.6.1
  		params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
  	end

    # Before filters

    ### re 10.3, move signed_in_user to the Sessions helper so that Microposts controller can use it also
    # def signed_in_user
    #   unless signed_in?
    #     store_location
    #     redirect_to signin_url, notice: "Please sign in."
    #   end
    # end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
