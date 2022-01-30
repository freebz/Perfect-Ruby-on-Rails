# 리스트 10-41 application.rb

config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
config.i18n.default_locale = :ko
