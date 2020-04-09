class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :train
      t.string :name, array: true, default: []
      t.integer :reps, array: true, default: []
      t.integer :series, array: true, default: []
      t.string :video, array: true, default: []
      t.timestamps
    end
  end
end
