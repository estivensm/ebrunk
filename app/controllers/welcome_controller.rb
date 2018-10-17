class WelcomeController < ApplicationController
	before_action :authenticate_runner!, :except => [:index]  


	def index


	end	

	def runner_home
		@properties = Property.where(runner_id: current_runner.id).paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
		
	end


end
