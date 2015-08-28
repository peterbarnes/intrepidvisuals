class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message, we will contact you soon!'
    else
      flash.now[:error] = 'Sorry, something broke! Please email peterb@intrepidvisuals.com!'
      render :new
    end
  end
end
