class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end
  def create
  	@contact = Contact.new(secure_params)
  	if @contact.valid?
  		#SAVE WITH DRIVE
  		@contact.update_spreadsheet
  		flash[:notice] = "Message sent from #{@contact.name}."
  		redirect_to root_path
  	else
  		render :new
  	end
  end
  private

  def secure_params
  	params.required(:contact).permit(:name,:email,:content)
  end

end

