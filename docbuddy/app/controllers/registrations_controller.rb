class RegistrationController < Devise::RegistrationController
  # clear_respond_to
  respond_to :json
end