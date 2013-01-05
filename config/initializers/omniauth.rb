
Rails.application.config.middleware.use OmniAuth::Builder do
  # The following is for facebook
  provider :facebook, 190190657788290, '56d4cea927d8c32d8c0a476c4d9c0a9e', {:scope => 'email, read_stream, read_friendlists, friends_likes, friends_status, offline_access'}
 
  # If you want to also configure for additional login services, they would be configured here.
end
