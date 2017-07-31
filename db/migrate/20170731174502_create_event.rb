class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :horse
      t.string :date, null: false
      t.string :description, null: false
    end
  end
end
