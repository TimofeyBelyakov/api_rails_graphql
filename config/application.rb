require_relative 'boot'

require 'rails/all'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module ApiRailsPg
  class Application < Rails::Application
    config.load_defaults 7.0

    config.session_store :cookie_store, key: '_interslice_session'
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use config.session_store, config.session_options

    config.api_only = true
  end
end
