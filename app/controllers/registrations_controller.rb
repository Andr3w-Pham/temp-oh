class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_resource)
    home_profile_path
  end

  def after_inactive_sign_up_path_for(_resource)
    home_profile_path
  end
end
