Rails.application.config.middleware.use OmniAuth::Builder do
  provider :vkontakte, ENV['API_KEY_VK'], ENV['API_SECRET_VK']
end