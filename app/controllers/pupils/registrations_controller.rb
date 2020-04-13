# frozen_string_literal: true

class Pupils::RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  private

  def sign_up_params
    params.require(:pupil).permit(:name, :age, :photo, :telephone, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:pupil).permit(:name, :age, :photo, :telephone, :email, :password, :password_confirmation)
  end
end
