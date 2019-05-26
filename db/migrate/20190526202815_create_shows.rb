class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.datetime :dates
      t.text :description
      t.integer :theater_id

      t.timestamps
    end
  end
end
