class AddSqFtToPosts < ActiveRecord::Migration[5.2]
  def change
  	add_column :posts, :bedroom, :float
  	add_column :posts, :bathroom, :float
  	add_column :posts, :square_feet, :integer
  	add_column :posts, :description, :text
  end
end
