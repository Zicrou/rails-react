if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentification_app", domain: "zicrou-rails-react.herokuapp.com"
else 
    Rails.application.config.session_store :cookie_store, key: "_authentification_app"
end