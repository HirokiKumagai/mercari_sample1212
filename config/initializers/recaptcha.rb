# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key = Rails.application.credentials.recaptcha[:site_key]
  config.secret_key = Rails.application.credentials.recaptcha[:secret_key]
  # config.site_key  = '6LcE67wUAAAAAJYp4-yds6Q3PabizFgrkMEEpxAJ'
  # config.secret_key = '6LcE67wUAAAAAAmfOQo-a1wsXRCpQNBoxz3xTzgi'
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end