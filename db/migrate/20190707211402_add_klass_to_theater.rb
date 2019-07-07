class AddKlassToTheater < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :klass, :string
  end
end
