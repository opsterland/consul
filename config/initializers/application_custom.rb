module Consul
  class Application < Rails::Application
    unless Rails.env.test?
      config.i18n.default_locale = "nl"
      config.i18n.available_locales = ["nl", "fy-NL"]
      config.i18n.enforce_available_locales = false
      config.i18n.fallbacks = { "nl" => "en", "fy-NL" => "nl" }
    end
  end
end
