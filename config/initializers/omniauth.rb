require 'omniauth'
require 'omniauth/cas'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, url: ENV["A3_URL"] || "https://auth.altaire.com", callback_url: "/login"
end
