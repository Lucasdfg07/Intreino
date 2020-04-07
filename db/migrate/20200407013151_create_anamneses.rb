class CreateAnamneses < ActiveRecord::Migration[5.0]
  def change
    create_table :anamneses do |t|
      t.belongs_to :pupil
      t.string :recomendation
      t.string :surgery
      t.string :squeeze_or_burning
      t.string :bone_problem
      t.string :medicine
      t.string :contraindication
      t.timestamps
    end
  end
end
