class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    [:account_update,:sign_up].each do |metodo|
    devise_parameter_sanitizer.permit(metodo, keys: [:name, :code, :country_id, :address, :city, :type_of_identification, :number_document, :mobile, :phone, :age, :number_account_bank, :image, :video_call])
   end
  end
layout :layout_for_selection
	protected
	  def layout_for_selection
	    if controller_name == 'sessions'  || controller_name == 'passwords' 
	      'application'
	    elsif controller_name == 'registrations'

	        if action_name == "new" || action_name == "create"
	            'application'
	            else
	            	'runners'
	        end
	    	else
	      'runners'
	    end

	  end


protected

  def after_sign_in_path_for(resource)
 
    if runner_signed_in?
  		runner_home_path
  	end
  	     		
  end	
	
end
