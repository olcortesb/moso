class CreateJoinTableKnivesUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :knives, :users do |t|
      # t.index [:knife_id, :user_id]
      # t.index [:user_id, :knife_id]
    end
  end
end
