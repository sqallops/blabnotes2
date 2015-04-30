class SearchController < ApplicationController
  def index
	@experiments = Experiment.order(:date_started)
  end
  
  
end
