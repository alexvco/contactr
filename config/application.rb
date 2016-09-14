require_relative 'boot'

require 'rails/all'
require 'action_mailer'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Contactr
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    ##============================================================##
    ## Config action_mailer
    ##============================================================##
    # config.action_mailer.default_url_options = { :host => ENV["HOST"] }
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"
    config.action_mailer.default content_type: "text/html"
    # ActionMailer::Base.default :content_type => "text/html"
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              "smtp.gmail.com",
      port:                 587,
      domain:               'mail.google.com',
      user_name:            "me@gmail.com",
      password:             "me",
      authentication:       :plain,
      enable_starttls_auto: true 
    }
  end
end
