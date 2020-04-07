class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :train
      t.string :name, null: false
      t.string :reps, null: false
      t.string :series, null: false
      t.string :video
      t.timestamps
    end
  end
end
