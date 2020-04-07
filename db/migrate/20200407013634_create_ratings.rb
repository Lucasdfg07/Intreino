class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.belongs_to :pupil
      t.belongs_to :trainer
      t.integer :value
      t.string :comment
      t.timestamps
    end
  end
end
