class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:alert] = 'We received your questions, we will answer you really soon!'
      redirect_to contacts_new_path(@contact)
    else
      render :new
    end

  end

  def thanks
  end

  private

  def contact_params
    #Write contact params for contact
    params.require(:contact).permit(:name, :message, :email)
  end
end
