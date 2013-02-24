class CreateSignups < ActiveRecord::Migration
  def up
  	create_table("signups") do |table|
  		table.string :email 
  	end
  end


  def down
  end
end
