class RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    if resource.save
      after_sign_up_path_for(resource)
      redirect_to root_path
    else
      clean_up_passwords resource
      set_minimum_password_length
      render :new
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
