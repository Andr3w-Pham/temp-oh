class ApplicationController < ActionController::Base
  protected

   # before_action :authenticate_user!, except: [:index, :destroy]

   def after_sign_in_path_for(resource)
     request.env['omniauth.origin'] || stored_location_for(resource) || home_profile_path
   end
end
