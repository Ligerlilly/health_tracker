class ApplicationController < ActionController::Base
  require 'date'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :create_day


  def today
    Day.find_by_date(Date.today)
  end

  helper_method :today



  protected

  def create_day
    unless Day.find_by_date(Date.today)
      Day.create!(date: Date.today, word_date: Date.today.strftime("%A %B %e %Y"))
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
