OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 447488008640223,'231b6a0a2f16ff2259b8c1915f4c06e0', :display => "popup"
end