class CreateSolicitations < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitations do |t|
      t.belongs_to :pupil
      t.belongs_to :trainer
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
