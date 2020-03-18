require_relative 'boot'

require 'rails/all'

# Require the gems listrsted in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Donations
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    #config.stripe.publishable_key = 'pk_test_bdy9udztxZGdCPUYeMX6nrz1004OGkZgjU'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
