class ContactsController < ApplicationController


  def create
    @contact = Contact.create(name: params[:name], email: params[:email], message: params[:message], call: params[:call], call_date: params[:call_date], state_call: params[:state_call], url_call: params[:url_call], contac_state: params[:contac_state])

  	if @contact.save
  		
  		redirect_to root_path
  	end
  end

end
