require_relative '20150425172434_add_project_id_to_experiments.rb'
class AddForeignKeyToExperiments < ActiveRecord::Migration
  def change
    revert AddProjectIdToExperiments
	
	add_reference :experiments, :project, index: true, foreign_key: true
  end
end
