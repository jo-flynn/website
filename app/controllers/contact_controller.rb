class ContactController < ApplicationController
  # def contact
  #     @section_name = 'contact'
  #     @form = build_active_form :contact, :contact_form
  #     if @form.submitted?
  #         if @form.validated?
  # end

  before_filter :check_message, :only => :create

  def new 
  end

  # CREATE
  def create
      Contact_Mailer.deliver_contact_email params[:name], params[:email], params[:message]
      flash[:success] = "Thanks! I'll reply as soon as I can!"
      redirect_to root_url
  end

  protected

  # Validates our message
  def check_message
    if params[:message].blank?
      flash.now[:failure] = 'Please supply a message.'
      render :action => :new and return false
    end
  end
end
