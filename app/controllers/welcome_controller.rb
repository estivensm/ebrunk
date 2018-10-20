class WelcomeController < ApplicationController
	before_action :authenticate_runner!, :except => [:index]  


	def index


	end	

	def runner_home
		@properties = Property.where(runner_id: current_runner.id).paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
		
	end

	def pagina_show
		@properties =  Property.where(runner_id: current_runner.id).show_true.paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
		
	end


end
