class AddColumnsToTrainer < ActiveRecord::Migration[5.0]
  def change
  	add_reference :trainers, :city, index: true
  	add_column :trainers, :name, :string
  	add_column :trainers, :photo, :string
  	add_column :trainers, :telephone, :string
  	add_column :trainers, :facebook, :string
  	add_column :trainers, :instagram, :string
  	add_column :trainers, :cref, :string
  	add_column :trainers, :status, :string
  end
end
