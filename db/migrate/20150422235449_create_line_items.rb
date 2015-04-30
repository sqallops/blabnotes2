class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :experiment, index: true
      t.belongs_to :project, index: true

      t.timestamps
    end
  end
end
