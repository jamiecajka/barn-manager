class CreateCharge < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.belongs_to :horse
      t.string :date, null: false
      t.string :description, null: false
      t.money :amount, null: false
    end
  end
end
