OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '531678953545257', '098e768683eb86c059347e508707ac4f'
end