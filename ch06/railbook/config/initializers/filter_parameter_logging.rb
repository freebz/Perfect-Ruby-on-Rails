# 리스트 6-17 filter_parameter_logging.rb

# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [
  :passw, :secret, :token, :_key, :crypt, :salt, :certificate, :otp, :ssn
]

Rails.application.config.filter_parameters += [:password]
