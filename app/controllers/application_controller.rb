class ApplicationController < ActionController::Base
  protect_from_forgery
  
    # Devise: Where to redirect users once they have logged in
  def after_sign_in_path_for(resource)
    new_village_path # <- Path you want to redirect the user to.
  end
end
