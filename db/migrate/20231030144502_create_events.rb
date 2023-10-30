class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.integer :temperature
      t.integer :price

      t.timestamps
    end
  end
end
