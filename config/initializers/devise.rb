Devise.setup do |config|
  require 'devise/orm/active_record'

  config.secret_key = '4af2c2b8c61ff9a49b0b7a2bb96941c386706ffd001d34a49cf8294aeb267e791c8351ecfc32b1daf3243f77365c4c83f9754b0dbcefcdbccb1338d59b126d04'
  config.mailer_sender = 'contact@openmedia.bg'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.paranoid = true
  config.skip_session_storage = [:http_auth]
  config.reconfirmable = true
  config.remember_for = 1.year
  config.password_length = 8..200
  config.stretches = Rails.env.test? ? 1 : 10
  config.pepper = '52a400bb2b5d7c7e90881f955b0aa6ff7131824527fd6eec1199fe0e981048132abe724e9d0c2b37bc9f75c55978ec1d30a5692253ad87e75e3783a6fdb5da49'
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
