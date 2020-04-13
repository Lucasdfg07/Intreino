# frozen_string_literal: true

class Trainers::RegistrationsController < Devise::RegistrationsController
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  private

  def sign_up_params
    params.require(:trainer).permit(:city_id, :name, :photo, :telephone, :facebook, :instagram, :cref, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:trainer).permit(:city_id, :name, :photo, :telephone, :status, :payment_validate, :facebook, :instagram, :cref, :email, :password, :password_confirmation)
  end
end
