class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :venue
      t.string :city
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
