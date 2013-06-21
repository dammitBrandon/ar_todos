require_relative '../../config/application'

class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |list|
      list.string :name

      list.timestamps # Check this later
    end
  end
end
