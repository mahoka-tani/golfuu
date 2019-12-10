class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:show, :create]
    def index
        @users = User.all
        @post = Post.new
        @posts = params[:tag_id].present? ? Tag.find(params[:tag_id]).posts : Post.all
        @postts = params[:tag2_id].present? ? Tag2.find(params[:tag2_id]).posts : Post.all
    end

    def show
        @post = Post.find(params[:id])
        @advises = @post.advises
        @advise = Advise.new
        @posts = Tag.find(params[:id]).posts 
        @postts = Tag2.find(params[:id]).posts 
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        @post.gender = current_user.gender
        @post.age = current_user.age

        if @post.save
            #index.html.erbにページが移る
            redirect_to action: "index"
          #新しいTweetの保存に失敗した場合
          else
            #もう一回投稿画面へ
            redirect_to action: "new"
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def post_params
        params.require(:post).permit(:comment, :level, :image, :video, tag_ids: [], tag2_ids: [])
    end
end
