require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module KeywordMonitor
  class Application < Rails::Application
    config.i18n.available_locales = [:'pt-BR']
    config.i18n.default_locale = :'pt-BR'
    config.time_zone = 'Brasilia'

    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs false
      g.helper_specs false
    end
  end
end
