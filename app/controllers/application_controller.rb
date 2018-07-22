class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:index, :show]

    protected
     def after_sign_in_path_for(resource)
       if current_user.host || current_user.dj
          root_path
       else
         home_profile_path
       end
     end
end
