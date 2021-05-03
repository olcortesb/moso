class CreateAutors < ActiveRecord::Migration[6.0]
  def change
    create_table :autors do |t|
      t.string :name

      t.timestamps
    end
  end
end
