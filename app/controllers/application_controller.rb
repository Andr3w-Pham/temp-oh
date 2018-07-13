class ApplicationController < ActionController::Base
  protected

   # before_action :authenticate_user!, except: [:index, :destroy]

   def after_sign_in_path_for(resource)
    if current_user.host
       request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    elsif current_user.dj
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    else
      request.env['omniauth.origin'] || stored_location_for(resource) || home_profile_path
    end
   end
end
