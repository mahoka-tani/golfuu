class UsersController < ApplicationController
  def index
    if params[:age]
      #部分検索
      @users = User.where("age LIKE ? ",'%' + params[:age] + '%')
    else
      @users= User.all
    end

    if params[:gender]
      #部分検索
      @users = User.where("gender LIKE ? ",'%' + params[:gender] + '%')
    else
      @users= User.all
    end
  end


  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @favorite_posts = @user.favorite_posts
  end
end
