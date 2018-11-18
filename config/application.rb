require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lyondale
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Usa SASS ao invés de SCSS
    config.sass.preferred_syntax = :sass

    # Adiciona classe em inputs com erros de validação
    ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
      class_attr_index = html_tag.index 'class="'

      return html_tag.insert class_attr_index+7, 'field-error ' if class_attr_index
      html_tag.insert html_tag.index('>'), ' class="field-error"'
    end

    # i18n
    config.i18n.default_locale = :'pt-BR'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
