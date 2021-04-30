class CreateKnives < ActiveRecord::Migration[6.0]
  def change
    create_table :knives do |t|
      t.string :tag
      t.string :url
      t.string :code

      t.timestamps
    end
  end
end
