class UsersController < ApplicationController
  def index

    if params[:tag4_id] == nil 
      if params[:tag3_id] == nil
          @users = User.all

      elsif params[:tag3_id] == ''
           @users = User.all

      else
          @users = User.where("age LIKE ? ",'%' + params[:tag3_id] + '%')

      end
    
  else
    if params[:tag4_id] == nil
        @users = User.all

    elsif params[:tag4_id] == ''
        @users = User.all

    else
       @users = User.where("gender LIKE ? ",'%' + params[:tag4_id] + '%')
  end
  end


  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @favorite_posts = @user.favorite_posts
     
  end

  def create
    User.create(user_params)
      binding.pry
      redirect_to root_path
  end

end