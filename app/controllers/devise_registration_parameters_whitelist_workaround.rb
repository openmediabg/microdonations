module DeviseRegistrationParametersWhitelistWorkaround
  def self.included(controller)
    controller.send :before_action, :configure_permitted_parameters, if: :devise_controller?
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name]
  end
end
