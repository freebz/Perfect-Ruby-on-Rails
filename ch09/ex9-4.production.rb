# 리스트 9-4 production.rb

require "active_support/core_ext/integer/time"

Rails.application.configure do
  config.serve_static_assets = false
end
