class WelcomeController < ApplicationController
  def index
    @contact_form = ContactForm.new
  end


end
