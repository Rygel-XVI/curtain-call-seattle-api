class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :theater_id

      t.timestamps
    end
  end
end
