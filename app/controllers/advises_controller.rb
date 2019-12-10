class AdvisesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @advise = @post.advises.new(advise_params)
        @advise.user_id = current_user.id

        if @advise.save
            redirect_back(fallback_location: root_path)
        else
            redirect_back(fallback_location: root_path)
        end
    end

        private
        def advise_params
          params.require(:advise).permit(:content)
        end
end
