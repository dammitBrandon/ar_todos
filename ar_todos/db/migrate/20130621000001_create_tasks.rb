require_relative '../config'

class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |task|
      list.string :description
      list.integer  :completed
      list.timestamps # Check this later
    end
  end
end
