class ParksController < ApplicationController
  def index
  	@parks = Park.all
  	render :index
  end
  def show
  end
end
