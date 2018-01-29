class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    "/welcome/#{resource.id}"
  end
end
