class CreatePupilTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :pupil_trainers do |t|
      t.belongs_to :pupil
      t.belongs_to :trainer
      t.timestamps
    end
  end
end
