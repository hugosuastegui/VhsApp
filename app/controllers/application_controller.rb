class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SetSource

  def current_user
    super ||  OpenStruct.new(email: "Guest")
  end
end
