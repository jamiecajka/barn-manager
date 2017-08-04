class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.belongs_to :horse
      t.string :date, null: false
      t.string :description, null: false
      t.string :time, null: false
      t.text :notes
    end
  end
end
