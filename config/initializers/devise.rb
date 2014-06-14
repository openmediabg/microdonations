Devise.setup do |config|
  require 'devise/orm/active_record'

  config.pepper = Rails.application.secrets.devise_pepper
  config.mailer_sender = 'contact@openmedia.bg'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.paranoid = true
  config.skip_session_storage = [:http_auth]
  config.reconfirmable = true
  config.remember_for = 1.year
  config.password_length = 8..200
  config.stretches = Rails.env.test? ? 1 : 10
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
