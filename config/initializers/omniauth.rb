OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(:facebook,'455590694529905','c449681f5584aea2d1ee23394cd2d649')
  end