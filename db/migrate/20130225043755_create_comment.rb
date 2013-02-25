class CreateComment < ActiveRecord::Migration
  def up
  	create_table("comments") do |table|
  		table.string :text
  	end 	
  end

  def down
  end
end
