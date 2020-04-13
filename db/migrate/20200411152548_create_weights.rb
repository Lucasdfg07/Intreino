class CreateWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :weights do |t|
      t.belongs_to :pupil
      t.float :value
      t.timestamps
    end
  end
end
