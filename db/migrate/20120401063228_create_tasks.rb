class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :milestone_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
