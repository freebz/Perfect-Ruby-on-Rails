# 리스트 2-12 my_config.rb

MY_APP = YAML.load(
  File.read("#{Rails.root}/config/my_config.yml"))[Rails.env]
