class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :status
      t.datetime :evebt_date
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
