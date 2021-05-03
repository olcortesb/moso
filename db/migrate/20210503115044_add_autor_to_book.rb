class AddAutorToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :autor, null: false, foreign_key: true
  end
end
