class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def request_contact
    flash[:notice] = I18n.t('home.request_contact.email_sent')
    redirect_to root_path
end

  def about
  end


end
