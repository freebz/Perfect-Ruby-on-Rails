# 리스트 10-32 application.rb

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railbook
  class Application < Rails::Application
    # ...생략...
    config.i18n.default_locale = :ko
    # ...생략...
  end
end
