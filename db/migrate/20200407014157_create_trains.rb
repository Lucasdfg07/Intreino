class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.belongs_to :trainer
      t.belongs_to :pupil
      t.string :day_of_week
      t.string :grouping
      t.date :validate_date
      t.string :modality

      t.timestamps
    end
  end
end
