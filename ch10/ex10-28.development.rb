# 리스트 10-28 development.rb

require "active_support/core_ext/integer/time"

Rails.application.configure do
  
  config.cache_store = :memory_store, { size: 16.megabytes }
  
end
