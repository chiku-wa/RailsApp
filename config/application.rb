require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleDiary
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Add タイムゾーンを東京に設定
    config.time_zone = 'Tokyo'

    # デフォルトではi18nのメッセージを日本語化
    config.i18n.default_locale = :ja
    # 日本語と英語の両方を有効化する
    config.i18n.available_locales = [:ja, :en]
    # localesフォルダ直下だけでなく、配下のサブフォルダも参照する
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
  end
end
