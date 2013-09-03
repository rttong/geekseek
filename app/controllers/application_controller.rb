class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.profile_type == 'volunteer'
      volunteer_url
    else
      organization_url
    end
  end
  
end
