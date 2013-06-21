require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |task|
      task.string :description
      task.integer  :completed
      task.timestamps # Check this later
    end
  end
end
