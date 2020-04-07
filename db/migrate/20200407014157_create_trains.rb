class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.belongs_to :trainer
      t.belongs_to :pupil
      t.date :validate
      t.string :type

      t.timestamps
    end
  end
end
