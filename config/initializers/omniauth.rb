Rails.application.config.session_store :cookie_store, key: '_interslice_session'
Rails.application.config.middleware.use ActionDispatch::Cookies # Required for all session management
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore, Rails.application.config.session_options

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
