class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = find_locale || I18n.default_locale
  end

  def default_url_options(options={})
    { locale: I18n.locale }
  end

  private

  def find_locale
    parsed_locale = params[:locale].try(:to_sym)
    I18n.available_locales.include?(parsed_locale) ? parsed_locale : nil
  end
end
