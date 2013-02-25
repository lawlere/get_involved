class CreateResponse < ActiveRecord::Migration
  def up
  	create_table("responses") do |table|
  		table.boolean :would_donate
  	end 	
  end

  def down
  end
end
