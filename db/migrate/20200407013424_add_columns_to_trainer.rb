class AddColumnsToTrainer < ActiveRecord::Migration[5.0]
  def change
  	add_column :trainers, :name, :string
  	add_column :trainers, :photo, :string
  	add_column :trainers, :telephone, :integer
  	add_column :trainers, :facebook, :string
  	add_column :trainers, :instagram, :string
  	add_column :trainers, :cref, :string
  end
end
