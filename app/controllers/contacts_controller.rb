class ContactsController < ApplicationController
  layout 'runner_home', :only => [:index]

  def index

  	@contact = Contact.all

  end

  def create
     
     Contact.create(name: params[:name], email: params[:email], message: params[:message], call: params[:call], call_date: params[:call_date], state_call: params[:state_call], url_call: params[:url_call], contac_state: params[:contac_state])

  end

end
