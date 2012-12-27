OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '384717311618550', '476bc30e75bc5d87e594339f1b03c380'
end

