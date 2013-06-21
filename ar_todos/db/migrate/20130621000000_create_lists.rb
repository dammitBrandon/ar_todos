require_relative '../config'

class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |list|
      list.string :name

      list.timestamps # Check this later
    end
  end
end
