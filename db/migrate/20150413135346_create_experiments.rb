class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :procedure
      t.string :image_url
      t.date :date_started

      t.timestamps
    end
  end
end
