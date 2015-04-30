class AddProjectIdToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :project_id, :integer
  end
end
