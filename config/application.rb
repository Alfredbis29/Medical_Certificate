require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MedicalCertificate
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    #enable bullet
    config.after_initialize do
      Bullet.enable = true
      Bullet.bullet_logger = true
      Bullet.raise = true # raise an error if N+1 query or unused eager loading is detected
    end

    # Configuration for the application, engines, and railties goes here.
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
