class SessionsController < Devise::SessionsController
  

  def new
    super
    # respond_with(resource, serialize_options(resource))
    
    # p serialize_options(resource)
  end


end