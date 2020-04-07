class CreateSolicitations < ActiveRecord::Migration[5.0]
  def change
    create_table :solicitations do |t|
      t.belongs_to :user
      t.belongs_to :trainer
      t.integer :approved
      t.timestamps
    end
  end
end
