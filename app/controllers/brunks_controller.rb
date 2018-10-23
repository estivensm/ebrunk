class BrunksController < ApplicationController
before_action :authenticate_runner!
layout 'runner_home'

  def step1
    @property = Property.find(params[:id])
    @properties = Property.where(brunk: true).where.not(runner_id: current_runner.id).paginate(:page => params[:page], :per_page => 20)
  end

  def step2
     @property = Property.find(params[:id1])
     @property1 = Property.find(params[:id2])
  end

  def my_brunks
  end

  def show
  end

  def brunks_required
  end


  def create_brunk
    puts "holaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  end
end
