OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 483725301669620,'b14c3c301c61e5867990a282af2a3db9'
end