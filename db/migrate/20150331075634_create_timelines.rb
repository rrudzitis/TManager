class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :project
      t.string :description

      t.timestamps null: false
    end
  end
end
