class CreateVeterinarian < ActiveRecord::Migration[5.1]
  def change
    create_table :veterinarians do |t|
      t.belongs_to :horse
      t.string :name, null: false
      t.string :phone_number, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
    end
  end
end
