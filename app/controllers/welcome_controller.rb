class WelcomeController < ApplicationController
	before_action :authenticate_runner!, :except => [:index, :runners_avatar] 


	def index


	end	

	def runners_avatar
		if params[:search] || params[:search1] || params[:search2] || params[:search3]
			@runner = Runner.all.search(params[:search], params[:search1],params[:search2],params[:search3]).paginate(:page => params[:page], :per_page => 4)
		else
			@runner = Runner.all.paginate(:page => params[:page], :per_page => 4)
		end
		
	end

	def runner_home
		@properties = Property.where(runner_id: current_runner.id).paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
	end

	def pagina_show
		@properties =  Property.where(runner_id: current_runner.id).show_true.paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
		
	end

	def index_contacs
		@contact = Contact.all.paginate(:page => params[:page], :per_page => 4)
		render :layout => "runner_home"
	end


end
