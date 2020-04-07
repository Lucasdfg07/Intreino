class ApplicationController < ActionController::Base
  before_action :authenticate_pupil!
  protect_from_forgery with: :exception
end
