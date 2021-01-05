Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, 
      Rails.application.credentials.github[:test_id],
      Rails.application.credentials.github[:test_secret]
  else
    provider :github,
      Rails.application.credentials.github[:client_id_pro],
      Rails.application.credentials.github[:client_secret_pro]
  end

end