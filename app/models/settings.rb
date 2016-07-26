class Settings < Settingslogic
  source "#{Rails.root}/config/secure.yml"
  namespace Rails.env
end