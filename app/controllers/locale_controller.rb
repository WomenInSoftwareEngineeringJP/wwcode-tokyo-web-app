class LocaleController < ApplicationController
  def update
    set_locale
    redirect_to request.referrer.gsub(%r{\/#{params[:locale]}\/}, "/#{params[:new_locale]}/")
  end
end
