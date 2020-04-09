require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Intreino
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = "pt-BR"
    
    Time::DATE_FORMATS[:default] = "%d/%m/%Y"
 	Date::DATE_FORMATS[:default] = "%d/%m/%Y"

   	config.time_zone = 'Brasilia'
  end
end
