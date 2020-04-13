class AddColumnsToTrainer < ActiveRecord::Migration[5.0]
  def change
  	add_column :trainers, :name, :string
  	add_column :trainers, :photo, :string
  	add_column :trainers, :telephone, :string
  	add_column :trainers, :facebook, :string
  	add_column :trainers, :instagram, :string
  	add_column :trainers, :cref, :string
  	add_column :trainers, :status, :string, default: 'pendent'
    add_column :trainers, :payment_validate, :date
  end
end
