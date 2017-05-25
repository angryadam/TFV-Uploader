class RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token, :only => :create
  before_action :two_users_registered?, only: [:new, :create]

  protected

  def two_users_registered?
    if (User.count == 2) & user_signed_in?
      redirect_to root_path
    elsif User.count == 2
      redirect_to new_user_session_path
    end
  end
end
