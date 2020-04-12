class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # ↓これを追加↓
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :memo, :best_score, :image, :age, :gender, :best_score_future])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :memo, :destination, :best_score, :image, :age, :gender, :best_score_future])
    end
# ↑ここまで↑

 # ログイン後、blogs/indexに移動する
 def after_sign_in_path_for(resource)
  posts_path
end

end
