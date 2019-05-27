class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :location
      t.string :name

      t.timestamps
    end
  end
end
