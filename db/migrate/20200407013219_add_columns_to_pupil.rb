class AddColumnsToPupil < ActiveRecord::Migration[5.0]
  def change
  	add_column :pupils, :name, :string
  	add_column :pupils, :photo, :string
  	add_column :pupils, :telephone, :string
  	add_reference :pupils, :anamnesis, index: true
  end
end
