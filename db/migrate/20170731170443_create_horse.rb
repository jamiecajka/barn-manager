class CreateHorse < ActiveRecord::Migration[5.1]
  def change
    create_table :horses do |t|
      t.string :picture
      t.string :registered_name
      t.string :barn_name, null: false
      t.string :breed, null: false
      t.string :disipline

      t.belongs_to :trainer_id
      t.belongs_to :owner_id
    end
  end
end
