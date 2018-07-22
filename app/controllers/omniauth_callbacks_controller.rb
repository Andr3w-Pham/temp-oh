class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # replace with your authenticate method

  def google_oauth2

    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Google") if is_navigational_format?
      if current_user.host || current_user.dj
         redirect_to root_path
      else
        redirect_to home_profile_path
      end
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end

  end

  def failure
    redirect_to root_path
  end
end
